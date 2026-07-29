import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.SpecialFunctions.SphericalHarmonics

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure DirectionalCorrelationPackage (D : DirectionalStatPackage) where
  correlationFunction : EuclideanSpace ℝ (Fin 3) → EuclideanSpace ℝ (Fin 3) → ℝ
  isotropyCondition : Prop
  positiveDefinite : Prop
  spectralRepresentation : Prop
  correlationClosed : Prop

structure DirectionalCorrelationEvidence {D : DirectionalStatPackage} (C : DirectionalCorrelationPackage D) where
  isotropyConditionClosed : C.isotropyCondition
  positiveDefiniteClosed : C.positiveDefinite
  spectralRepresentationClosed : C.spectralRepresentation
  correlationClosedTerm : C.correlationClosed

def DirectionalCorrelationClosed {D : DirectionalStatPackage} (C : DirectionalCorrelationPackage D) : Prop :=
  C.isotropyCondition ∧ C.positiveDefinite ∧ C.spectralRepresentation ∧ C.correlationClosed

theorem directional_correlation_closed_from_evidence {D : DirectionalStatPackage}
    (C : DirectionalCorrelationPackage D) (E : DirectionalCorrelationEvidence C) :
    DirectionalCorrelationClosed C := by
  exact And.intro E.isotropyConditionClosed (And.intro E.positiveDefiniteClosed (And.intro E.spectralRepresentationClosed E.correlationClosedTerm))

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse