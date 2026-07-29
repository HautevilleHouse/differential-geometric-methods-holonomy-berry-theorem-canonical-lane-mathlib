import DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure ConnectionHolonomyPackage where
  principalBundle : Type u
  baseManifold : Type v
  lieGroup : Type w
  connectionForm : Type x
  curvatureForm : Type y
  holonomyGroup : Type z
  parallelTransport : Prop
  ambrey_connections : Prop
  curvatureTwoForm : Prop
  holonomy_loop_parallel : Prop

structure ConnectionHolonomyEvidence (P : ConnectionHolonomyPackage) where
  parallelTransportClosed : P.parallelTransport
  ambrey_connectionsClosed : P.ambrey_connections
  curvatureTwoFormClosed : P.curvatureTwoForm
  holonomy_loop_parallelClosed : P.holonomy_loop_parallel

def ConnectionHolonomyClosed (P : ConnectionHolonomyPackage) : Prop :=
  P.parallelTransport ∧ P.ambrey_connections ∧ P.curvatureTwoForm ∧ P.holonomy_loop_parallel

theorem connection_holonomy_closed_from_evidence (P : ConnectionHolonomyPackage) (E : ConnectionHolonomyEvidence P) : ConnectionHolonomyClosed P := by
  exact And.intro E.parallelTransportClosed (And.intro E.ambrey_connectionsClosed (And.intro E.curvatureTwoFormClosed E.holonomy_loop_parallelClosed))

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse
