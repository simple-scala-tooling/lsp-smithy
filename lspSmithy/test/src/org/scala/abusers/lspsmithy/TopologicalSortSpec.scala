package org.scala.abusers

import langoustine.meta.*
import weaver.*

object TopologicalSortSpec extends SimpleIOSuite {

  def struct(name: String, deps: String*): Structure =
    Structure(
      name = StructureName(name),
      `extends` = deps.map(dep => Type.ReferenceType(TypeName(dep))).toVector,
    )

  def structWithMixins(name: String, mixins: String*): Structure =
    Structure(
      name = StructureName(name),
      mixins = mixins.map(m => Type.ReferenceType(TypeName(m))).toVector,
    )

  pureTest("sorts structures with dependencies in correct order") {
    val a = struct("A")
    val b = struct("B", "A")      // extends A
    val c = struct("C", "B")      // extends B
    val d = struct("D", "A")      // extends A
    val e = struct("E", "C", "D") // extends C and D

    val input  = Vector(e, d, c, b, a)
    val result = topologicalSort(input)

    matches(result) {
      case Left(value) => failure(s"Expected successful topological sort, but was: $value")
      case Right(sorted) =>
        val names = sorted.map(_.name.toString)
        expect(leftBeforeRight("A", "B", names)) &&
        expect(leftBeforeRight("B", "C", names)) &&
        expect(leftBeforeRight("A", "D", names)) &&
        expect(leftBeforeRight("C", "E", names)) &&
        expect(leftBeforeRight("D", "E", names))
    }
  }

  pureTest("handles dependencies via mixins") {
    val base = struct("Base")
    val a    = structWithMixins("A", "Base")
    val b    = structWithMixins("B", "A")
    val c    = struct("C")

    val input  = Vector(b, a, c, base)
    val result = topologicalSort(input)

    matches(result) {
      case Left(value) => failure(s"Expected successful topological sort, but was: $value")
      case Right(sorted) =>
        val names = sorted.map(_.name.toString)
        expect(leftBeforeRight("Base", "A", names)) &&
        expect(leftBeforeRight("A", "B", names))
    }
  }

  pureTest("handles mixed extends and mixins dependencies") {
    val base1 = struct("Base1")
    val base2 = struct("Base2")
    val mid = Structure(
      name = StructureName("Mid"),
      `extends` = Vector(Type.ReferenceType(TypeName("Base1"))),
      mixins = Vector(Type.ReferenceType(TypeName("Base2"))),
    )
    val top = struct("Top", "Mid")

    val input  = Vector(top, base2, mid, base1)
    val result = topologicalSort(input)

    matches(result) {
      case Left(value) => failure(s"Expected successful topological sort, but was: $value")
      case Right(sorted) =>
        val names = sorted.map(_.name.toString)
        expect(leftBeforeRight("Base1", "Mid", names)) &&
        expect(leftBeforeRight("Base2", "Mid", names)) &&
        expect(leftBeforeRight("Mid", "Top", names))
    }
  }

  pureTest("handles multiple independent structures") {
    val a = struct("A")
    val b = struct("B")
    val c = struct("C")

    val result = topologicalSort(Vector(c, a, b))
    matches(result) {
      case Left(error) => failure(s"Expected successful topological sort, but was: $error")
      case Right(sorted) =>
        expect.same(
          sorted.map(_.name.toString),
          List("C", "A", "B"),
        ) // the order doesn't matter as long as the result is deterministic
    }
  }

  pureTest("detects cycle") {
    val a = struct("A", "B")
    val b = struct("B", "A") // cycle

    val result = topologicalSort(Vector(a, b))
    matches(result) {
      case Left(error) =>
        expect.same(error, "Cycle detected or unresolved dependencies")
      case Right(_) =>
        failure("Expected cycle detection")
    }
  }

  pureTest("detects cycle via mixins") {
    val a = structWithMixins("A", "B")
    val b = structWithMixins("B", "A") // cycle A <~> B via mixins

    val result = topologicalSort(Vector(a, b))
    matches(result) {
      case Left(error) =>
        expect.same(error, "Cycle detected or unresolved dependencies")
      case Right(_) =>
        failure("Expected cycle detection")
    }
  }

  pureTest("detects mixed cycle via extends and mixins") {
    val a = struct("A", "B") // A extends B
    val b = Structure(
      name = StructureName("B"),
      mixins = Vector(Type.ReferenceType(TypeName("C"))),
    )
    val c = struct("C", "A") // C extends A → closes the cycle

    val result = topologicalSort(Vector(a, b, c))

    matches(result) {
      case Left(error) =>
        expect.same(error, "Cycle detected or unresolved dependencies")
      case Right(_) =>
        failure("Expected cycle detection")
    }
  }

  private def leftBeforeRight(left: String, right: String, list: Vector[String]): Boolean =
    list.indexOf(left) < list.indexOf(right)
}
