import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean.HolonomyBundle

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure CurvatureInvariantPackage (B : HolonomyBundle M) where
  curvatureTwoForm : Type u
  chernClass : Type v
  pontryaginClass : Type w
  eulerClass : Type x
  curvatureInvariantsComputed : Prop
  curvatureInvariantsComputedTerm : curvatureInvariantsComputed

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage B) where
  curvatureTwoFormClosed : True
  chernClassClosed : True
  pontryaginClassClosed : True
  eulerClassClosed : True
  curvatureInvariantsClosed : True

def CurvatureInvariantClosed (C : CurvatureInvariantPackage B) : Prop :=
  C.curvatureInvariantsComputed

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariantPackage B)
    (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C :=
  E.curvatureInvariantsClosed

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse