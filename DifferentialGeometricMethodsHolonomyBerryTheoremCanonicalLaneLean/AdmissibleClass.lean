import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure BerryAdmittedObject where
  baseManifold : Type u
  fiber : Type v
  connection : Type w
  holonomyGroup : Type x
  berryPhase : Prop
  conclusion : berryPhase

def BerryWitnessClosed (O : BerryAdmittedObject) : Prop :=
  O.berryPhase

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse
