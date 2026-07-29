import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure VonMisesDistribution (κ : Type) [Real κ] where
  concentration : κ
  meanDirection : κ
  density : κ → κ
  normalizationConstant : κ
  concentrationPositive : concentration > 0
  densityClosed : density = (fun x : κ => Real.exp (concentration * Real.cos (x - meanDirection)) / normalizationConstant)

structure VonMisesEvidence (κ : Type) [Real κ] (V : VonMisesDistribution κ) where
  concentrationPositiveClosed : V.concentrationPositive
  densityClosedClosed : V.densityClosed

def VonMisesClosed (κ : Type) [Real κ] (V : VonMisesDistribution κ) : Prop :=
  V.concentrationPositive ∧ V.densityClosed

theorem von_mises_closed_from_evidence (κ : Type) [Real κ] (V : VonMisesDistribution κ) (E : VonMisesEvidence κ V) : VonMisesClosed κ V := by
  exact And.intro E.concentrationPositiveClosed E.densityClosedClosed

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse