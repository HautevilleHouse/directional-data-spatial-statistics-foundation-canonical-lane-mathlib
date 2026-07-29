import DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : DirectionalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DirectionalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
