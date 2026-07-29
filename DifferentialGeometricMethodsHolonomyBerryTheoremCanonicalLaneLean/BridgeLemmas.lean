import DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O : BerryAdmittedObject := A.object
  BerryWitnessClosed O

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse
