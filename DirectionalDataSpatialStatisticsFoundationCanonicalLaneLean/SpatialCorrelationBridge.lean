import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure SpatialCorrelationPackage where
  variogram : Type u
  covarianceModel : Type v
  isotropy : Prop
  stationarity : Prop
  krigingPredictor : Prop

structure SpatialCorrelationEvidence (S : SpatialCorrelationPackage) where
  isotropyClosed : S.isotropy
  stationarityClosed : S.stationarity
  krigingPredictorClosed : S.krigingPredictor

def SpatialCorrelationClosed (S : SpatialCorrelationPackage) : Prop :=
  S.isotropy ∧ S.stationarity ∧ S.krigingPredictor

theorem spatial_correlation_closed_from_evidence (S : SpatialCorrelationPackage) (Ev : SpatialCorrelationEvidence S) : SpatialCorrelationClosed S := by
  exact And.intro Ev.isotropyClosed (And.intro Ev.stationarityClosed Ev.krigingPredictorClosed)

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
