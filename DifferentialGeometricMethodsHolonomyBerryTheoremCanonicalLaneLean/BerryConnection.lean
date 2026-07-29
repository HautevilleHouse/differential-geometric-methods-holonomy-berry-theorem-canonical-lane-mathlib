import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure BerryConnectionPackage where
  parameterSpace : Type u
  topology : TopologicalSpace parameterSpace
  hilbertBundle : Type v
  berryConnection : Type w
  symplecticStructure : Prop
  curvyatureMatchesBerry : Prop
  parameterSpaceSmooth : Prop

def BerryConnectionClosed (B : BerryConnectionPackage) : Prop :=
  B.symplecticStructure ∧ B.curvyatureMatchesBerry ∧ B.parameterSpaceSmooth

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse
