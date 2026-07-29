import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure SpatialCorrelationStructure where
  spatialDomain : Type u
  correlationFunction : spatialDomain → spatialDomain → ℝ
  stationarityCondition : Prop
  isotropyCondition : Prop
  positiveDefiniteness : Prop
  stationarityConditionTerm : stationarityCondition
  isotropyConditionTerm : isotropyCondition
  positiveDefinitenessTerm : positiveDefiniteness

structure SpatialCorrelationStructureEvidence (C : SpatialCorrelationStructure) where
  stationarityConditionClosed : C.stationarityCondition
  isotropyConditionClosed : C.isotropyCondition
  positiveDefinitenessClosed : C.positiveDefiniteness

def SpatialCorrelationStructureClosed (C : SpatialCorrelationStructure) : Prop :=
  C.stationarityCondition ∧ C.isotropyCondition ∧ C.positiveDefiniteness

theorem spatial_correlation_structure_closed_from_evidence
    (C : SpatialCorrelationStructure) (E : SpatialCorrelationStructureEvidence C) :
    SpatialCorrelationStructureClosed C := by
  exact And.intro E.stationarityConditionClosed
    (And.intro E.isotropyConditionClosed E.positiveDefinitenessClosed)

end HautevilleHouse.DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean