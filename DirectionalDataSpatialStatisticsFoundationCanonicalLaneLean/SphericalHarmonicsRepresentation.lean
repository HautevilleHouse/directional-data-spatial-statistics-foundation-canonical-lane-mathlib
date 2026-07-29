import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure SphericalHarmonicsPackage where
  sphereDimension : Nat
  harmonicBasis : Type u
  fourierTransform : Type v
  orthogonality : Prop
  completeness : Prop
  additionTheorem : Prop

structure SphericalHarmonicsEvidence (S : SphericalHarmonicsPackage) where
  orthogonalityClosed : S.orthogonality
  completenessClosed : S.completeness
  additionTheoremClosed : S.additionTheorem

def SphericalHarmonicsClosed (S : SphericalHarmonicsPackage) : Prop :=
  S.orthogonality ∧ S.completeness ∧ S.additionTheorem

theorem spherical_harmonics_closed_from_evidence (S : SphericalHarmonicsPackage) (Ev : SphericalHarmonicsEvidence S) : SphericalHarmonicsClosed S := by
  exact And.intro Ev.orthogonalityClosed (And.intro Ev.completenessClosed Ev.additionTheoremClosed)

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
