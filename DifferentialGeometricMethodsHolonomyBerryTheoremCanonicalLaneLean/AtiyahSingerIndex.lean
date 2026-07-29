import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure AtiyahSingerIndexPackage where
  ellipticOperator : Type u
  indexBundle : Type v
  symbolClass : Type w
  indexTheoremStatement : Prop
  topologicalIndex : Prop
  analyticIndex : Prop
  indexEquality : Prop

structure AtiyahSingerIndexPackageEvidence (A : AtiyahSingerIndexPackage) where
  indexTheoremStatementClosed : A.indexTheoremStatement
  topologicalIndexClosed : A.topologicalIndex
  analyticIndexClosed : A.analyticIndex
  indexEqualityClosed : A.indexEquality

def AtiyahSingerIndexPackageClosed (A : AtiyahSingerIndexPackage) : Prop :=
  A.indexTheoremStatement ∧ A.topologicalIndex ∧ A.analyticIndex ∧ A.indexEquality

theorem atiyah_singer_index_package_closed_from_evidence (A : AtiyahSingerIndexPackage) (E : AtiyahSingerIndexPackageEvidence A) :
    AtiyahSingerIndexPackageClosed A := by
  exact And.intro E.indexTheoremStatementClosed (And.intro E.topologicalIndexClosed (And.intro E.analyticIndexClosed E.indexEqualityClosed))

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse