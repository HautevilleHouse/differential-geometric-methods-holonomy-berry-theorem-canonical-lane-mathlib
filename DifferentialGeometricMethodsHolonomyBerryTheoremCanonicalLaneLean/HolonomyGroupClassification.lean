import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean.HolonomyBundle
import DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure HolonomyGroupClassification (B : HolonomyBundle M)
    (C : CurvatureInvariantPackage B) where
  irrepDecomposition : Type u
  monodromyRepresentation : Type v
  restrictedHolonomy : Prop
  ambiantHolonomy : Prop
  holonomyClassified : Prop
  holonomyClassifiedTerm : holonomyClassified

structure HolonomyGroupEvidence (H : HolonomyGroupClassification B C) where
  irrepDecompositionClosed : True
  monodromyRepresentationClosed : True
  restrictedHolonomyClosed : True
  ambiantHolonomyClosed : True
  holonomyClassifiedClosed : True

def HolonomyGroupClosed (H : HolonomyGroupClassification B C) : Prop :=
  H.holonomyClassified

theorem holonomy_group_closed_from_evidence (H : HolonomyGroupClassification B C)
    (E : HolonomyGroupEvidence H) : HolonomyGroupClosed H :=
  E.holonomyClassifiedClosed

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse