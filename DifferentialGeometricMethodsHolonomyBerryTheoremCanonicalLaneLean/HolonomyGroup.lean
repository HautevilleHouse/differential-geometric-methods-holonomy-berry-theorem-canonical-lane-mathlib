import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure HolonomyGroup {M : Type u} [TopologicalSpace M] [SmoothManifold M] where
  basepoint : M
  loopSpace : Type v
  composition : loopSpace → loopSpace → loopSpace
  identityElement : loopSpace
  inverseElement : loopSpace → loopSpace
  groupLaws : Prop
  smoothStructure : Prop
  groupLawsClosed : groupLaws
  smoothStructureClosed : smoothStructure

structure HolonomyGroupEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] (H : HolonomyGroup M) where
  groupLawsClosed : H.groupLaws
  smoothStructureClosed : H.smoothStructure

def HolonomyGroupClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M] (H : HolonomyGroup M) : Prop :=
  H.groupLaws ∧ H.smoothStructure

theorem holonomy_group_closed_from_evidence {M : Type u} [TopologicalSpace M] [SmoothManifold M] (H : HolonomyGroup M) (E : HolonomyGroupEvidence H) :
    HolonomyGroupClosed H := by
  exact And.intro E.groupLawsClosed E.smoothStructureClosed

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse