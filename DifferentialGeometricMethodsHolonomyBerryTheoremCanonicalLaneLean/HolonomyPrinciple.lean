import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure HolonomyPrinciplePackage where
  holonomyGroup : Type u
  restrictedHolonomy : Prop
  topologicalGroupStructure : Prop
  holonomyPrincipleHolds : Prop

def HolonomyPrincipleClosed (H : HolonomyPrinciplePackage) : Prop :=
  H.restrictedHolonomy ∧ H.topologicalGroupStructure ∧ H.holonomyPrincipleHolds

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse
