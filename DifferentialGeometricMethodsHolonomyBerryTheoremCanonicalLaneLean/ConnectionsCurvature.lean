import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean

structure ConnectionPackage where
  principalBundle : Type u
  baseManifold : Type v
  fiber : Type w
  connectionForm : Type x
  curvatureForm : Type y
  structureGroup : Type z
  smoothPrincipalBundle : Prop
  connectionSmooth : Prop
  curvatureSmooth : Prop

structure ConnectionPackageEvidence (C : ConnectionPackage) where
  smoothPrincipalBundleClosed : C.smoothPrincipalBundle
  connectionSmoothClosed : C.connectionSmooth
  curvatureSmoothClosed : C.curvatureSmooth

def ConnectionPackageClosed (C : ConnectionPackage) : Prop :=
  C.smoothPrincipalBundle ∧ C.connectionSmooth ∧ C.curvatureSmooth

theorem connection_package_closed_from_evidence (C : ConnectionPackage) (E : ConnectionPackageEvidence C) :
    ConnectionPackageClosed C := by
  exact And.intro E.smoothPrincipalBundleClosed (And.intro E.connectionSmoothClosed E.curvatureSmoothClosed)

end DifferentialGeometricMethodsHolonomyBerryTheoremCanonicalLaneLean
end HautevilleHouse