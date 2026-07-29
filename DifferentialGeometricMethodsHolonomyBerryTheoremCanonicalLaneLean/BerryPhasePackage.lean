import DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean.ConnectionHolonomyPackage

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure BerryPhasePackage {P : ConnectionHolonomyPackage} (H : ConnectionHolonomyClosed P) where
  adiabaticEvolution : Prop
  geometricPhase : Prop
  cyclicParameter : Prop
  berryConnection : Prop
  phaseGaugeInvariant : Prop

structure BerryPhaseEvidence {P : ConnectionHolonomyPackage} {H : ConnectionHolonomyClosed P} (B : BerryPhasePackage H) where
  adiabaticEvolutionClosed : B.adiabaticEvolution
  geometricPhaseClosed : B.geometricPhase
  cyclicParameterClosed : B.cyclicParameter
  berryConnectionClosed : B.berryConnection
  phaseGaugeInvariantClosed : B.phaseGaugeInvariant

def BerryPhaseClosed {P : ConnectionHolonomyPackage} {H : ConnectionHolonomyClosed P} (B : BerryPhasePackage H) : Prop :=
  B.adiabaticEvolution ∧ B.geometricPhase ∧ B.cyclicParameter ∧ B.berryConnection ∧ B.phaseGaugeInvariant

theorem berry_phase_closed_from_evidence {P : ConnectionHolonomyPackage} {H : ConnectionHolonomyClosed P} (B : BerryPhasePackage H) (E : BerryPhaseEvidence B) : BerryPhaseClosed B := by
  exact And.intro E.adiabaticEvolutionClosed (And.intro E.geometricPhaseClosed (And.intro E.cyclicParameterClosed (And.intro E.berryConnectionClosed E.phaseGaugeInvariantClosed)))

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse
