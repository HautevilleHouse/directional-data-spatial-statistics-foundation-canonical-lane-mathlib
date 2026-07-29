import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure SufficiencyExponentialFamilyPackage (D : DirectionalStatPackage) where
  sufficientStatistic : D.sampleSpace → EuclideanSpace ℝ (Fin 5)
  exponentialForm : D.sampleSpace → ℝ
  logPartition : EuclideanSpace ℝ (Fin 5) → ℝ
  carrierMeasure : MeasureTheory.Measure D.sampleSpace
  sufficiencyClosed : Prop
  exponentialFamilyClosed : Prop

structure SufficiencyExponentialFamilyEvidence {D : DirectionalStatPackage} (S : SufficiencyExponentialFamilyPackage D) where
  sufficiencyClosedTerm : S.sufficiencyClosed
  exponentialFamilyClosedTerm : S.exponentialFamilyClosed

def SufficiencyExponentialFamilyClosed {D : DirectionalStatPackage} (S : SufficiencyExponentialFamilyPackage D) : Prop :=
  S.sufficiencyClosed ∧ S.exponentialFamilyClosed

theorem sufficiency_exponential_family_closed_from_evidence {D : DirectionalStatPackage}
    (S : SufficiencyExponentialFamilyPackage D) (E : SufficiencyExponentialFamilyEvidence S) :
    SufficiencyExponentialFamilyClosed S := by
  exact And.intro E.sufficiencyClosedTerm E.exponentialFamilyClosedTerm

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse