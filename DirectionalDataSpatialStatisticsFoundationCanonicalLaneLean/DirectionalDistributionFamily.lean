import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure DirectionalDistributionFamily where
  sampleSpace : Type u
  directionSupport : Set sampleSpace
  probabilityDensity : sampleSpace → ℝ
  normalizingConstant : ℝ
  exponentialFamilyForm : Prop
  sufficiencyReduction : Prop
  exponentialFamilyFormTerm : exponentialFamilyForm
  sufficiencyReductionTerm : sufficiencyReduction

structure DirectionalDistributionFamilyEvidence (D : DirectionalDistributionFamily) where
  exponentialFamilyFormClosed : D.exponentialFamilyForm
  sufficiencyReductionClosed : D.sufficiencyReduction

def DirectionalDistributionFamilyClosed (D : DirectionalDistributionFamily) : Prop :=
  D.exponentialFamilyForm ∧ D.sufficiencyReduction

theorem directional_distribution_family_closed_from_evidence
    (D : DirectionalDistributionFamily) (E : DirectionalDistributionFamilyEvidence D) :
    DirectionalDistributionFamilyClosed D := by
  exact And.intro E.exponentialFamilyFormClosed E.sufficiencyReductionClosed

end HautevilleHouse.DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean