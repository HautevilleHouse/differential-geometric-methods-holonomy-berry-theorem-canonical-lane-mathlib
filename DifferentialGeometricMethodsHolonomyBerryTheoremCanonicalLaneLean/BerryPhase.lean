import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure BerryPhase {H : Type u} [NormedAddCommGroup H] [InnerProductSpace ℂ H] where
  parameterSpace : Type v
  eigenstateFamily : parameterSpace → H
  berryConnection : Type w
  berryCurvature : Type x
  geometricPhase : Prop
  adiabaticTheorem : Prop
  geometricPhaseClosed : geometricPhase
  adiabaticTheoremClosed : adiabaticTheorem

structure BerryPhaseEvidence {H : Type u} [NormedAddCommGroup H] [InnerProductSpace ℂ H] (B : BerryPhase H) where
  geometricPhaseClosed : B.geometricPhase
  adiabaticTheoremClosed : B.adiabaticTheorem

def BerryPhaseClosed {H : Type u} [NormedAddCommGroup H] [InnerProductSpace ℂ H] (B : BerryPhase H) : Prop :=
  B.geometricPhase ∧ B.adiabaticTheorem

theorem berry_phase_closed_from_evidence {H : Type u} [NormedAddCommGroup H] [InnerProductSpace ℂ H] (B : BerryPhase H) (E : BerryPhaseEvidence B) :
    BerryPhaseClosed B := by
  exact And.intro E.geometricPhaseClosed E.adiabaticTheoremClosed

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse