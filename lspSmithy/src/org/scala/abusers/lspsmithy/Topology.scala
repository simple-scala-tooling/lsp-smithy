package org.scala.abusers

import langoustine.meta.*

def referencedStructureNames(t: Type): Set[String] = t match {
  case Type.ReferenceType(name) => Set(name.value)
  case Type.AndType(items)      => items.flatMap(referencedStructureNames).toSet
  case Type.OrType(items)       => items.flatMap(referencedStructureNames).toSet
  case Type.ArrayType(elem)     => referencedStructureNames(elem)
  case Type.MapType(k, v)       => referencedStructureNames(k) ++ referencedStructureNames(v)
  case Type.TupleType(items)    => items.flatMap(referencedStructureNames).toSet
  case _                        => Set.empty
}

def structureDependencies(struct: Structure): Set[String] =
  (struct.`extends` ++ struct.mixins).flatMap(referencedStructureNames).toSet

def topologicalSort(structures: Vector[Structure]): Either[String, Vector[Structure]] = {
  val byName: Map[String, Structure] = structures.map(s => s.name.value -> s).toMap

  val deps: Map[String, Set[String]] = structures.map { s =>
    s.name.value -> structureDependencies(s).intersect(byName.keySet) // tylko znane zależności
  }.toMap

  val reverseDeps: Map[String, Set[String]] =
    deps.toList
      .flatMap { case (from, tos) => tos.map(to => to -> from) }
      .groupMap(_._1)(_._2)
      .view
      .mapValues(_.toSet)
      .toMap

  val noIncoming  = scala.collection.mutable.Queue[String](deps.filter(_._2.isEmpty).keys.toSeq: _*)
  val result      = scala.collection.mutable.ArrayBuffer[String]()
  val mutableDeps = scala.collection.mutable.Map.from(deps)

  while (noIncoming.nonEmpty) {
    val current = noIncoming.dequeue()
    result += current

    for (dependent <- reverseDeps.getOrElse(current, Set.empty)) {
      val updated = mutableDeps(dependent) - current
      mutableDeps.update(dependent, updated)
      if (updated.isEmpty) noIncoming.enqueue(dependent)
    }
  }

  if (result.size != structures.size)
    Left("Cycle detected or unresolved dependencies")
  else
    Right(result.toList.flatMap(byName.get).toVector)
}
