import DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DirectionalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  sphereStructure : Prop

structure DirectionalAdmittedObject where
  space : DirectionalSpace
  uniformDistribution : Prop
  exponentialFamily : Prop
  conclusion : uniformDistribution ∧ exponentialFamily

structure DirectionalEndgameState where
  object : DirectionalAdmittedObject

def DirectionalWitnessClosed (O : DirectionalAdmittedObject) : Prop :=
  O.uniformDistribution ∧ O.exponentialFamily

end DirectionalDataSpatialStatisticsFoundationCanonicalLaneLean
end HautevilleHouse
