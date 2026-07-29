import DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean.ReplicaSymmetryBreaking

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure LangevinDynamicsPackage {P : RandomIsingSpinGlassPackage}
    {T : ThermodynamicLimitPackage P} {SK : SherringtonKirkpatrickMeanFieldPackage T}
    {RSB : ReplicaSymmetryBreakingPackage SK} where
  stochasticProcess : Prop
  glauberDynamics : Prop
  inertialTerm : Prop
  fluctuationDissipation : Prop
  agingBehavior : Prop

structure LangevinDynamicsEvidence {P : RandomIsingSpinGlassPackage}
    {T : ThermodynamicLimitPackage P} {SK : SherringtonKirkpatrickMeanFieldPackage T}
    {RSB : ReplicaSymmetryBreakingPackage SK}
    (L : LangevinDynamicsPackage RSB) where
  stochasticProcessClosed : L.stochasticProcess
  glauberDynamicsClosed : L.glauberDynamics
  inertialTermClosed : L.inertialTerm
  fluctuationDissipationClosed : L.fluctuationDissipation
  agingBehaviorClosed : L.agingBehavior

def LangevinDynamicsClosed {P : RandomIsingSpinGlassPackage}
    {T : ThermodynamicLimitPackage P} {SK : SherringtonKirkpatrickMeanFieldPackage T}
    {RSB : ReplicaSymmetryBreakingPackage SK}
    (L : LangevinDynamicsPackage RSB) : Prop :=
  L.stochasticProcess ∧ L.glauberDynamics ∧ L.inertialTerm ∧
  L.fluctuationDissipation ∧ L.agingBehavior

theorem langevin_dynamics_closed_from_evidence
    {P : RandomIsingSpinGlassPackage} {T : ThermodynamicLimitPackage P}
    {SK : SherringtonKirkpatrickMeanFieldPackage T}
    {RSB : ReplicaSymmetryBreakingPackage SK}
    (L : LangevinDynamicsPackage RSB)
    (E : LangevinDynamicsEvidence L) : LangevinDynamicsClosed L := by
  exact And.intro E.stochasticProcessClosed
    (And.intro E.glauberDynamicsClosed
      (And.intro E.inertialTermClosed
        (And.intro E.fluctuationDissipationClosed E.agingBehaviorClosed)))

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse