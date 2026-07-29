import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean.VonMisesDistribution
import HautevilleHouse.DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean.FisherDistribution

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure SpatialStructure (κ : Type) [Real κ] (dim : Nat) where
  points : Type
  distanceFunction : points → points → κ
  directionalData : points → (κ → κ)
  stationarity : Prop
  isotropy : Prop
  stationarityClosed : stationarity
  isotropyClosed : isotropy

def SpatialClosed (κ : Type) [Real κ] (dim : Nat) (S : SpatialStructure κ dim) : Prop :=
  S.stationarity ∧ S.isotropy

theorem spatial_closed_from_evidence (κ : Type) [Real κ] (dim : Nat) (S : SpatialStructure κ dim) : SpatialClosed κ dim S := by
  exact And.intro S.stationarityClosed S.isotropyClosed

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse