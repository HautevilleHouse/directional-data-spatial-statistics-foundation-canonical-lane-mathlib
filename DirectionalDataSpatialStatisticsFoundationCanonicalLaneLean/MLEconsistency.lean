import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure MaximumLikelihoodEstimator where
  parameterSpace : Type u
  likelihoodFunction : Type v
  estimatorDerived : Prop
  consistencyProperty : Prop
  asymptoticNormality : Prop

structure MLEEvidence (M : MaximumLikelihoodEstimator) where
  estimatorDerivedClosed : M.estimatorDerived
  consistencyPropertyClosed : M.consistencyProperty
  asymptoticNormalityClosed : M.asymptoticNormality

def MLEClosed (M : MaximumLikelihoodEstimator) : Prop :=
  M.estimatorDerived ∧ M.consistencyProperty ∧ M.asymptoticNormality

theorem mle_closed_from_evidence (M : MaximumLikelihoodEstimator)
    (E : MLEEvidence M) : MLEClosed M := by
  exact And.intro E.estimatorDerivedClosed
    (And.intro E.consistencyPropertyClosed E.asymptoticNormalityClosed)

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
