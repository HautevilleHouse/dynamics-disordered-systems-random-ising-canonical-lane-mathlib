import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure DropletScalingPackage where
  dropletExcitationEnergy : Type u
  systemSize : Type v
  fractalDimension : Type w
  lowEnergyExcitations : Prop
  scalingRelation : Prop
  chaosExponent : Prop

structure DropletScalingEvidence (P : DropletScalingPackage) where
  lowEnergyExcitationsClosed : P.lowEnergyExcitations
  scalingRelationClosed : P.scalingRelation
  chaosExponentClosed : P.chaosExponent

def DropletScalingClosed (P : DropletScalingPackage) : Prop :=
  P.lowEnergyExcitations ∧ P.scalingRelation ∧ P.chaosExponent

theorem droplet_scaling_closed_from_evidence (P : DropletScalingPackage)
    (E : DropletScalingEvidence P) : DropletScalingClosed P := by
  exact And.intro E.lowEnergyExcitationsClosed
    (And.intro E.scalingRelationClosed E.chaosExponentClosed)

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse