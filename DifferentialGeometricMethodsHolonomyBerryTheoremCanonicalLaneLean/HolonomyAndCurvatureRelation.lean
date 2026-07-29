import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure HolonomyAndCurvatureRelation {M : Type u} [TopologicalSpace M] [SmoothManifold M] where
  holonomyGroup : Type v
  curvatureForm : Type w
  ambarBottTheorem : Prop
  holonomyLieAlgebra : Prop
  localHolonomyGeneratesCurvature : Prop
  ambarBottTheoremClosed : ambarBottTheorem
  holonomyLieAlgebraClosed : holonomyLieAlgebra
  localHolonomyGeneratesCurvatureClosed : localHolonomyGeneratesCurvature

structure HolonomyAndCurvatureRelationEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] (R : HolonomyAndCurvatureRelation M) where
  ambarBottTheoremClosed : R.ambarBottTheorem
  holonomyLieAlgebraClosed : R.holonomyLieAlgebra
  localHolonomyGeneratesCurvatureClosed : R.localHolonomyGeneratesCurvature

def HolonomyAndCurvatureRelationClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M] (R : HolonomyAndCurvatureRelation M) : Prop :=
  R.ambarBottTheorem ∧ R.holonomyLieAlgebra ∧ R.localHolonomyGeneratesCurvature

theorem holonomy_and_curvature_relation_closed_from_evidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] (R : HolonomyAndCurvatureRelation M) (E : HolonomyAndCurvatureRelationEvidence R) :
    HolonomyAndCurvatureRelationClosed R := by
  exact And.intro E.ambarBottTheoremClosed (And.intro E.holonomyLieAlgebraClosed E.localHolonomyGeneratesCurvatureClosed)

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse