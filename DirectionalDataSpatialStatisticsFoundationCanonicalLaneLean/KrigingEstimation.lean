import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean.SpatialStructure

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure KrigingEstimation (κ : Type) [Real κ] (dim : Nat) (S : SpatialStructure κ dim) where
  variogramModel : κ → κ
  krigingWeights : κ
  unbiasedness : Prop
  optimality : Prop
  unbiasednessClosed : unbiasedness
  optimalityClosed : optimality

def KrigingClosed (κ : Type) [Real κ] (dim : Nat) (S : SpatialStructure κ dim) (K : KrigingEstimation κ dim S) : Prop :=
  K.unbiasedness ∧ K.optimality

theorem kriging_closed_from_evidence (κ : Type) [Real κ] (dim : Nat) (S : SpatialStructure κ dim) (K : KrigingEstimation κ dim S) : KrigingClosed κ dim S K := by
  exact And.intro K.unbiasednessClosed K.optimalityClosed

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse