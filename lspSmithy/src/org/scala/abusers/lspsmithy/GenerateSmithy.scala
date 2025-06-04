package org.scala.abusers.lspsmithy

import langoustine.meta.*
import langoustine.meta.json.given
import software.amazon.smithy.model.shapes.SmithyIdlModelSerializer
import upickle.default.*

import java.nio.file.Paths
import scala.io.Source
import scala.jdk.CollectionConverters.*

@main
def main() = {
  val stream      = this.getClass.getResourceAsStream("/metaModel.json")
  val jsonStr     = Source.fromInputStream(stream).mkString
  val metaModel   = read[MetaModel](jsonStr)
  val smithyModel = SmithyConverter(preprocess(metaModel))
  val outputMap   = SmithyIdlModelSerializer.builder().build().serialize(smithyModel.unwrap()).asScala.toMap

  val targetDir = os.Path(sys.env("TARGET_PATH"))
  os.remove.all(targetDir)

  outputMap.get(Paths.get("lsp.smithy")).foreach { content =>
    val outputPath = targetDir / "lsp.smithy"
    os.write.over(outputPath, content, createFolders = true)
  }
  val manifestContent = "lsp.smithy"
  os.write.over(targetDir / "manifest", manifestContent, createFolders = true)
}

private[lspsmithy] def preprocess(metaModel: MetaModel): MetaModel =
  removeNullUnionVariants.andThen(flattenSingleVariantUnions)(metaModel)

private def removeNullUnionVariants(metaModel: MetaModel): MetaModel = {
  def processType(p: Property): Property = p.`type` match {
    case Type.OrType(items) =>
      val nonNullItems = items.collect {
        case Type.BaseType(BaseTypes.NULL) => None
        case other                         => Some(other)
      }.flatten

      if (nonNullItems.size < items.size)
        p.copy(`type` = Type.OrType(nonNullItems), optional = IsOptional(nonNullItems.size < items.size))
      else
        p
    case _ => p
  }

  def withoutNull(t: Type): TypeTraversal = t match {
    case Type.OrType(items) =>
      val cleaned = items.filterNot(_ == Type.BaseType(BaseTypes.NULL))
      if cleaned.size < items.size then
        if cleaned.size == 1 then TypeTraversal.Replace(cleaned.head)
        else TypeTraversal.Replace(Type.OrType(cleaned))
      else TypeTraversal.Skip
    case _ => TypeTraversal.Skip
  }
  apply(metaModel)(withoutNull)(processType)
}

private def flattenSingleVariantUnions(metaModel: MetaModel): MetaModel = {
  def flattenOr(t: Type): TypeTraversal =
    t match {
      case Type.OrType(Vector(single)) => TypeTraversal.Replace(single)
      case _                           => TypeTraversal.Skip
    }

  def processType(t: Type): Type =
    TypeTraversal(t)(flattenOr)

  def processProperty(p: Property): Property =
    p.copy(`type` = processType(p.`type`))

  apply(metaModel)(flattenOr)(processProperty)
}

private def apply(metaModel: MetaModel)(f: Type => TypeTraversal)(g: Property => Property): MetaModel = {
  def transform(t: Type): Type =
    TypeTraversal(t)(f)

  def transformParams(p: ParamsType): ParamsType = p match {
    case ParamsType.Single(t) => ParamsType.Single(transform(t))
    case ParamsType.Many(v)   => ParamsType.Many(v.map(transform))
    case ParamsType.None      => ParamsType.None
  }

  metaModel.copy(
    structures = metaModel.structures.map { s =>
      s.copy(properties = s.properties.map { p =>
        g(p)
      })
    },
    typeAliases = metaModel.typeAliases.map { ta =>
      ta.copy(`type` = transform(ta.`type`))
    },
    requests = metaModel.requests.map { r =>
      r.copy(
        params = transformParams(r.params),
        result = transform(r.result),
      )
    },
    notifications = metaModel.notifications.map { n =>
      n.copy(params = transformParams(n.params))
    },
  )
}
