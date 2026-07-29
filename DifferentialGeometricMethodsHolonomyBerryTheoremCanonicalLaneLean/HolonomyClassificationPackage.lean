import DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean.BerryPhasePackage

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure HolonomyClassificationPackage {P : ConnectionHolonomyPackage} {H : ConnectionHolonomyClosed P} {B : BerryPhasePackage H} (C : BerryPhaseClosed B) where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  holonomyGroupClassified : Prop
  berryPhaseTopologicalInvariant : Prop
  holonomyMatchesBerryPhase : Prop

structure HolonomyClassificationEvidence {P : ConnectionHolonomyPackage} {H : ConnectionHolonomyClosed P} {B : BerryPhasePackage H} {C : BerryPhaseClosed B} (D : HolonomyClassificationPackage C) where
  holonomyGroupClassifiedClosed : D.holonomyGroupClassified
  berryPhaseTopologicalInvariantClosed : D.berryPhaseTopologicalInvariant
  holonomyMatchesBerryPhaseClosed : D.holonomyMatchesBerryPhase

def HolonomyClassificationClosed {P : ConnectionHolonomyPackage} {H : ConnectionHolonomyClosed P} {B : BerryPhasePackage H} {C : BerryPhaseClosed B} (D : HolonomyClassificationPackage C) : Prop :=
  D.holonomyGroupClassified ∧ D.berryPhaseTopologicalInvariant ∧ D.holonomyMatchesBerryPhase

theorem holonomy_classification_closed_from_evidence {P : ConnectionHolonomyPackage} {H : ConnectionHolonomyClosed P} {B : BerryPhasePackage H} {C : BerryPhaseClosed B} (D : HolonomyClassificationPackage C) (E : HolonomyClassificationEvidence D) : HolonomyClassificationClosed D := by
  exact And.intro E.holonomyGroupClassifiedClosed (And.intro E.berryPhaseTopologicalInvariantClosed E.holonomyMatchesBerryPhaseClosed)

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse
