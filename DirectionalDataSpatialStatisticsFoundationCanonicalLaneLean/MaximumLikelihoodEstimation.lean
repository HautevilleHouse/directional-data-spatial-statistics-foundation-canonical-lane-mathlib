import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure MLEPackage where
  likelihoodFunction : Type u
  scoreEquation : Type v
  informationMatrix : Type w
  consistency : Prop
  asymptoticNormality : Prop
  efficiency : Prop

struct MLEEvidence (M : MLEPackage) where
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality
  efficiencyClosed : M.efficiency

def MLEClosed (M : MLEPackage) : Prop :=
  M.consistency ∧ M.asymptoticNormality ∧ M.efficiency

theorem mle_closed_from_evidence (M : MLEPackage) (Ev : MLEEvidence M) : MLEClosed M := by
  exact And.intro Ev.consistencyClosed (And.intro Ev.asymptoticNormalityClosed Ev.efficiencyClosed)

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
