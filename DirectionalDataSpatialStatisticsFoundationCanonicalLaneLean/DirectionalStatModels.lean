import canonicalLaneMathlib.AdmissibleClass
import Mathlib.MeasureTheory.Probability.Distribution

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure DirectionalStatPackage where
  sampleSpace : Type u
  sigmaAlgebra : MeasurableSpace sampleSpace
  probabilityMeasure : MeasureTheory.Measure sampleSpace
  directionVariable : sampleSpace → EuclideanSpace ℝ (Fin 3)
  sphericalCoordinateSystem : Prop
  toroidalCoordinateSystem : Prop
  manifoldSupportPolar : Prop

structure DirectionalStatEvidence (D : DirectionalStatPackage) where
  sphericalCoordinateSystemClosed : D.sphericalCoordinateSystem
  toroidalCoordinateSystemClosed : D.toroidalCoordinateSystem
  manifoldSupportPolarClosed : D.manifoldSupportPolar

def DirectionalStatClosed (D : DirectionalStatPackage) : Prop :=
  D.sphericalCoordinateSystem ∧ D.toroidalCoordinateSystem ∧ D.manifoldSupportPolar

theorem directional_stat_closed_from_evidence (D : DirectionalStatPackage) (E : DirectionalStatEvidence D) :
    DirectionalStatClosed D := by
  exact And.intro E.sphericalCoordinateSystemClosed (And.intro E.toroidalCoordinateSystemClosed E.manifoldSupportPolarClosed)

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse