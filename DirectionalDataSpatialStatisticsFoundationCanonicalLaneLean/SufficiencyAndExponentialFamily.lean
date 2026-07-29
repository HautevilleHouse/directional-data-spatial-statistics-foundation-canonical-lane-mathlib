import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure SufficiencyAndExponentialFamilyPackage where
  sufficientStatistic : Prop
  factorizationCriterion : Prop
  exponentialFamilyForm : Prop
  naturalParameterSpace : Prop
  canonicalStatistic : Prop
  sufficientStatisticTerm : sufficientStatistic
  factorizationCriterionTerm : factorizationCriterion
  exponentialFamilyFormTerm : exponentialFamilyForm
  naturalParameterSpaceTerm : naturalParameterSpace
  canonicalStatisticTerm : canonicalStatistic

structure SufficiencyAndExponentialFamilyEvidence
    (S : SufficiencyAndExponentialFamilyPackage) where
  sufficientStatisticClosed : S.sufficientStatistic
  factorizationCriterionClosed : S.factorizationCriterion
  exponentialFamilyFormClosed : S.exponentialFamilyForm
  naturalParameterSpaceClosed : S.naturalParameterSpace
  canonicalStatisticClosed : S.canonicalStatistic

def SufficiencyAndExponentialFamilyClosed
    (S : SufficiencyAndExponentialFamilyPackage) : Prop :=
  S.sufficientStatistic ∧ S.factorizationCriterion ∧
  S.exponentialFamilyForm ∧ S.naturalParameterSpace ∧ S.canonicalStatistic

theorem sufficiency_and_exponential_family_closed_from_evidence
    (S : SufficiencyAndExponentialFamilyPackage)
    (E : SufficiencyAndExponentialFamilyEvidence S) :
    SufficiencyAndExponentialFamilyClosed S := by
  exact And.intro E.sufficientStatisticClosed
    (And.intro E.factorizationCriterionClosed
      (And.intro E.exponentialFamilyFormClosed
        (And.intro E.naturalParameterSpaceClosed E.canonicalStatisticClosed)))

end HautevilleHouse.DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean