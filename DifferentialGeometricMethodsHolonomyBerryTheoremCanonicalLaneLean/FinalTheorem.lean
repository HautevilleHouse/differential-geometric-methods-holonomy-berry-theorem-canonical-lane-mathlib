import DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

def ConstrainedBerryTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_berry_theorem_endgame (A : AdmissibleClass) :
    ConstrainedBerryTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse
