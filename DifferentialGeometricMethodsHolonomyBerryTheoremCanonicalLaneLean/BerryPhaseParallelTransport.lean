import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean.HolonomyBundle

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure BerryPhaseParallelTransport (B : HolonomyBundle M) where
  parameterSpace : Type u
  adiabaticEvolution : Type v
  berryConnection : B.connection
  berryCurvature : Type w
  holonomyAroundLoop : B.fiber → B.fiber → Prop
  geometricPhase : Prop
  geometricPhaseTerm : geometricPhase

structure BerryPhaseEvidence (P : BerryPhaseParallelTransport B) where
  adiabaticEvolutionClosed : True
  berryConnectionClosed : True
  berryCurvatureClosed : True
  holonomyAroundLoopClosed : True
  geometricPhaseClosed : True

def BerryPhaseClosed (P : BerryPhaseParallelTransport B) : Prop :=
  P.geometricPhase

theorem berry_phase_closed_from_evidence (P : BerryPhaseParallelTransport B)
    (E : BerryPhaseEvidence P) : BerryPhaseClosed P :=
  E.geometricPhaseClosed

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse