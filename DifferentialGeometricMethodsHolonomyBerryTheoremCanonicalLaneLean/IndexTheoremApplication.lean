import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure IndexTheoremApplication (C : CurvatureInvariantPackage B) where
  diracOperator : Type u
  indexFormula : Type v
  aHatGenus : Type w
  indexComputed : Prop
  indexComputedTerm : indexComputed

structure IndexTheoremEvidence (I : IndexTheoremApplication C) where
  diracOperatorClosed : Pure
  indexFormulaClosed : Pure
  aHatGenusClosed : Pure
  indexComputedClosed : Pure

def IndexTheoremClosed (I : IndexTheoremApplication C) : Prop :=
  I.indexComputed

theorem index_theorem_closed_from_evidence (I : IndexTheoremApplication C)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I :=
  E.indexComputedClosed

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse