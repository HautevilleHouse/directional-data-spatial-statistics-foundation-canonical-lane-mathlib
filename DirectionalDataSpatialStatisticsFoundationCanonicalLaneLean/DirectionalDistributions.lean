import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure DirectionalDistributionModel where
  sphereDimension : Nat
  dataSpace : Type u
  sampleSpace : Type v
  densityFamily : Type w
  sufficiencyProperty : Prop
  exponentialFamilyForm : Prop

structure DirectionalDistributionEvidence (M : DirectionalDistributionModel) where
  sufficiencyPropertyClosed : M.sufficiencyProperty
  exponentialFamilyFormClosed : M.exponentialFamilyForm

def DirectionalDistributionClosed (M : DirectionalDistributionModel) : Prop :=
  M.sufficiencyProperty ∧ M.exponentialFamilyForm

theorem directional_distribution_closed_from_evidence (M : DirectionalDistributionModel)
    (E : DirectionalDistributionEvidence M) : DirectionalDistributionClosed M := by
  exact And.intro E.sufficiencyPropertyClosed E.exponentialFamilyFormClosed

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
