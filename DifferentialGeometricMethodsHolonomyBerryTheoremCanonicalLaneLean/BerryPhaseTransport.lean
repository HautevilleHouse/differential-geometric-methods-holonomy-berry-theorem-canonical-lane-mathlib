import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure BerryPhaseTransportPackage where
  loopSpace : Type u
  holonomyMap : Type v
  pathIntegralDefined : Prop
  parallelTransportDefined : Prop
  phaseMatchingCondition : Prop

def BerryPhaseTransportClosed (T : BerryPhaseTransportPackage) : Prop :=
  T.pathIntegralDefined ∧ T.parallelTransportDefined ∧ T.phaseMatchingCondition

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse
