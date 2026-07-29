import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure NeymanPearsonPackage where
  simpleHypotheses : Prop
  likelihoodRatio : Type u
  criticalRegion : Type v
  mostPowerfulTest : Prop
  significanceLevel : Prop
  powerFunction : Prop

structure NeymanPearsonEvidence (N : NeymanPearsonPackage) where
  simpleHypothesesClosed : N.simpleHypotheses
  likelihoodRatioClosed : Type u
  criticalRegionClosed : Type v
  mostPowerfulTestClosed : N.mostPowerfulTest
  significanceLevelClosed : N.significanceLevel
  powerFunctionClosed : N.powerFunction

def NeymanPearsonClosed (N : NeymanPearsonPackage) : Prop :=
  N.mostPowerfulTest ∧ N.significanceLevel ∧ N.powerFunction

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonPackage) (Ev : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro Ev.mostPowerfulTestClosed (And.intro Ev.significanceLevelClosed Ev.powerFunctionClosed)

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
