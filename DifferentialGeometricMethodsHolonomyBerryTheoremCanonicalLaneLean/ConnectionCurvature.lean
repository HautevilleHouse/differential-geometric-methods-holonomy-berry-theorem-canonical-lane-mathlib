import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure ConnectionCurvature {M : Type u} [TopologicalSpace M] [SmoothManifold M] where
  connectionForm : Type v
  curvatureForm : Type w
  structureEquation : Prop
  bianchiIdentity : Prop
  connectionCompatibleWithMetric : Prop
  structureEquationClosed : structureEquation
  bianchiIdentityClosed : bianchiIdentity
  connectionCompatibleWithMetricClosed : connectionCompatibleWithMetric

structure ConnectionCurvatureEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] (C : ConnectionCurvature M) where
  structureEquationClosed : C.structureEquation
  bianchiIdentityClosed : C.bianchiIdentity
  connectionCompatibleWithMetricClosed : C.connectionCompatibleWithMetric

def ConnectionCurvatureClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M] (C : ConnectionCurvature M) : Prop :=
  C.structureEquation ∧ C.bianchiIdentity ∧ C.connectionCompatibleWithMetric

theorem connection_curvature_closed_from_evidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] (C : ConnectionCurvature M) (E : ConnectionCurvatureEvidence C) :
    ConnectionCurvatureClosed C := by
  exact And.intro E.structureEquationClosed (And.intro E.bianchiIdentityClosed E.connectionCompatibleWithMetricClosed)

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse