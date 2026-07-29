import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure HolonomyConnectionPackage where
  baseManifold : Type u
  totalSpace : Type v
  structureGroup : Type w
  connectionForm : Type x
  curvatureForm : Type y
  parallelTransport : Type z
  holonomyGroup : Type u1
  holonomyGroupClosed : Prop
  connectionClosed : Prop
  curvatureClosed : Prop

structure HolonomyConnectionEvidence (H : HolonomyConnectionPackage) where
  holonomyGroupClosedTerm : H.holonomyGroupClosed
  connectionClosedTerm : H.connectionClosed
  curvatureClosedTerm : H.curvatureClosed

def HolonomyConnectionClosed (H : HolonomyConnectionPackage) : Prop :=
  H.holonomyGroupClosed ∧ H.connectionClosed ∧ H.curvatureClosed

theorem holonomy_connection_closed_from_evidence
    (H : HolonomyConnectionPackage) (E : HolonomyConnectionEvidence H) :
    HolonomyConnectionClosed H := by
  exact And.intro E.holonomyGroupClosedTerm
    (And.intro E.connectionClosedTerm E.curvatureClosedTerm)

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse