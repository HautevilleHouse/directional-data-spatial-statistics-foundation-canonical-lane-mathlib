import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure FisherDistribution (κ : Type) [Real κ] (dim : Nat) where
  concentration : κ
  meanDirection : κ → κ
  density : κ → κ
  normalizationConstant : κ
  concentrationPositive : concentration > 0
  densityClosed : density = (fun x : κ => (concentration / (2 * Real.pi))^(dim/2) * Real.exp(concentration * (meanDirection x - 1)) / normalizationConstant)

structure FisherEvidence (κ : Type) [Real κ] (dim : Nat) (F : FisherDistribution κ dim) where
  concentrationPositiveClosed : F.concentrationPositive
  densityClosedClosed : F.densityClosed

def FisherClosed (κ : Type) [Real κ] (dim : Nat) (F : FisherDistribution κ dim) : Prop :=
  F.concentrationPositive ∧ F.densityClosed

theorem fisher_closed_from_evidence (κ : Type) [Real κ] (dim : Nat) (F : FisherDistribution κ dim) (E : FisherEvidence κ dim F) : FisherClosed κ dim F := by
  exact And.intro E.concentrationPositiveClosed E.densityClosedClosed

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse