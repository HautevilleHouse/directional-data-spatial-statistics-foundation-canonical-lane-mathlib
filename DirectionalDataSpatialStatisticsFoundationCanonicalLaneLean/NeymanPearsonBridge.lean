import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure NeymanPearsonTest where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  testStatistic : Type u
  criticalRegion : Type v
  optimalPower : Prop
  mostPowerfulTest : Prop

structure NeymanPearsonEvidence (T : NeymanPearsonTest) where
  optimalPowerClosed : T.optimalPower
  mostPowerfulTestClosed : T.mostPowerfulTest

def NeymanPearsonClosed (T : NeymanPearsonTest) : Prop :=
  T.optimalPower ∧ T.mostPowerfulTest

theorem neyman_pearson_closed_from_evidence (T : NeymanPearsonTest)
    (E : NeymanPearsonEvidence T) : NeymanPearsonClosed T := by
  exact And.intro E.optimalPowerClosed E.mostPowerfulTestClosed

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
