import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean.KrigingEstimation

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure SpatialPrediction (κ : Type) [Real κ] (dim : Nat) (S : SpatialStructure κ dim) (K : KrigingEstimation κ dim S) where
  predictionLocation : S.points
  predictedValue : κ
  predictionVariance : κ
  predictionValid : Prop
  varianceComputed : Prop
  predictionValidClosed : predictionValid
  varianceComputedClosed : varianceComputed

def SpatialPredictionClosed (κ : Type) [Real κ] (dim : Nat) (S : SpatialStructure κ dim) (K : KrigingEstimation κ dim S) (P : SpatialPrediction κ dim S K) : Prop :=
  P.predictionValid ∧ P.varianceComputed

theorem spatial_prediction_closed_from_evidence (κ : Type) [Real κ] (dim : Nat) (S : SpatialStructure κ dim) (K : KrigingEstimation κ dim S) (P : SpatialPrediction κ dim S K) : SpatialPredictionClosed κ dim S K P := by
  exact And.intro P.predictionValidClosed P.varianceComputedClosed

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse