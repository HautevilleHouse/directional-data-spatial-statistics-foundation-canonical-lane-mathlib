import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

structure DirectionalDataSpatialStatisticsAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  spatialDomain : Prop
  directionalData : Prop
  conclusion : spatialDomain ∧ directionalData

def DirectionalDataSpatialStatisticsWitnessClosed (O : DirectionalDataSpatialStatisticsAdmittedObject) : Prop :=
  O.spatialDomain ∧ O.directionalData

theorem directional_data_spatial_statistics_witness_closed_from_object (O : DirectionalDataSpatialStatisticsAdmittedObject) :
    DirectionalDataSpatialStatisticsWitnessClosed O :=
  O.conclusion

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse