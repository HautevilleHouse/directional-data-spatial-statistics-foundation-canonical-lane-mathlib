import DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean.VonMisesDistribution

/-!
# Kriging Package
-/

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure KrigingPackage where
  variogramModel : EuclideanSpace ℝ (Fin 3) → EuclideanSpace ℝ (Fin 3) → ℝ
  bestLinearUnbiasedPredictor : Prop
  predictionVariance : Prop
  gaussianAssumption : Prop

structure KrigingEvidence (K : KrigingPackage) where
  bestLinearUnbiasedPredictorClosed : K.bestLinearUnbiasedPredictor
  predictionVarianceClosed : K.predictionVariance
  gaussianAssumptionClosed : K.gaussianAssumption

def KrigingClosed (K : KrigingPackage) : Prop :=
  K.bestLinearUnbiasedPredictor ∧ K.predictionVariance ∧ K.gaussianAssumption

theorem kriging_closed_from_evidence (K : KrigingPackage) (E : KrigingEvidence K) : KrigingClosed K := by
  exact And.intro E.bestLinearUnbiasedPredictorClosed (And.intro E.predictionVarianceClosed E.gaussianAssumptionClosed)

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
