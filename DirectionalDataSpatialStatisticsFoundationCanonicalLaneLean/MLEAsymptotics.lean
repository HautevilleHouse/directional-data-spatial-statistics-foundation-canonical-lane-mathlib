import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure MLEAsymptoticsPackage where
  logLikelihoodFunction : Prop
  scoreFunction : Prop
  fisherInformation : Prop
  consistencyCondition : Prop
  asymptoticNormality : Prop
  consistencyConditionTerm : consistencyCondition
  asymptoticNormalityTerm : asymptoticNormality

structure MLEAsymptoticsEvidence (M : MLEAsymptoticsPackage) where
  consistencyConditionClosed : M.consistencyCondition
  asymptoticNormalityClosed : M.asymptoticNormality

def MLEAsymptoticsClosed (M : MLEAsymptoticsPackage) : Prop :=
  M.consistencyCondition ∧ M.asymptoticNormality

theorem mle_asymptotics_closed_from_evidence
    (M : MLEAsymptoticsPackage) (E : MLEAsymptoticsEvidence M) :
    MLEAsymptoticsClosed M := by
  exact And.intro E.consistencyConditionClosed E.asymptoticNormalityClosed

end HautevilleHouse.DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean