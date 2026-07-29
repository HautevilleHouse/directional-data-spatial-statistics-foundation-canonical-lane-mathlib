import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure ExponentialFamilyPackage where
  sufficientStatistic : Type u
  logPartition : Type v
  naturalParameter : Type w
  carrierMeasure : Type x
  exponentialFamilyForm : Prop
  sufficiencyCondition : Prop
  minimalSufficiency : Prop
  completeness : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  exponentialFamilyFormClosed : E.exponentialFamilyForm
  sufficiencyConditionClosed : E.sufficiencyCondition
  minimalSufficiencyClosed : E.minimalSufficiency
  completenessClosed : E.completeness

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.exponentialFamilyForm ∧ E.sufficiencyCondition ∧ E.minimalSufficiency ∧ E.completeness

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage) (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.exponentialFamilyFormClosed (And.intro Ev.sufficiencyConditionClosed (And.intro Ev.minimalSufficiencyClosed Ev.completenessClosed))

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
