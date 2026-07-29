import DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean.Kriging

/-!
# Spherical Correlation Package
-/

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure SphericalCorrelationPackage where
  correlationFunction : EuclideanSpace ℝ (Fin 3) → EuclideanSpace ℝ (Fin 3) → ℝ
  positiveDefinite : Prop
  stationary : Prop
  isotropic : Prop

structure SphericalCorrelationEvidence (C : SphericalCorrelationPackage) where
  positiveDefiniteClosed : C.positiveDefinite
  stationaryClosed : C.stationary
  isotropicClosed : C.isotropic

def SphericalCorrelationClosed (C : SphericalCorrelationPackage) : Prop :=
  C.positiveDefinite ∧ C.stationary ∧ C.isotropic

theorem spherical_correlation_closed_from_evidence (C : SphericalCorrelationPackage)
    (E : SphericalCorrelationEvidence C) : SphericalCorrelationClosed C := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.stationaryClosed E.isotropicClosed)

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
