import DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean.SherringtonKirkpatrickMeanField

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure ReplicaSymmetryBreakingPackage {P : RandomIsingSpinGlassPackage}
    {T : ThermodynamicLimitPackage P} {SK : SherringtonKirkpatrickMeanFieldPackage T} where
  replicaAnsatz : Prop
  hierarchicalStructure : Prop
  parisiEquation : Prop
  ultrametricity : Prop

structure ReplicaSymmetryBreakingEvidence {P : RandomIsingSpinGlassPackage}
    {T : ThermodynamicLimitPackage P} {SK : SherringtonKirkpatrickMeanFieldPackage T}
    (RSB : ReplicaSymmetryBreakingPackage SK) where
  replicaAnsatzClosed : RSB.replicaAnsatz
  hierarchicalStructureClosed : RSB.hierarchicalStructure
  parisiEquationClosed : RSB.parisiEquation
  ultrametricityClosed : RSB.ultrametricity

def ReplicaSymmetryBreakingClosed {P : RandomIsingSpinGlassPackage}
    {T : ThermodynamicLimitPackage P} {SK : SherringtonKirkpatrickMeanFieldPackage T}
    (RSB : ReplicaSymmetryBreakingPackage SK) : Prop :=
  RSB.replicaAnsatz ∧ RSB.hierarchicalStructure ∧ RSB.parisiEquation ∧ RSB.ultrametricity

theorem replica_symmetry_breaking_closed_from_evidence
    {P : RandomIsingSpinGlassPackage} {T : ThermodynamicLimitPackage P}
    {SK : SherringtonKirkpatrickMeanFieldPackage T}
    (RSB : ReplicaSymmetryBreakingPackage SK)
    (E : ReplicaSymmetryBreakingEvidence RSB) : ReplicaSymmetryBreakingClosed RSB := by
  exact And.intro E.replicaAnsatzClosed
    (And.intro E.hierarchicalStructureClosed
      (And.intro E.parisiEquationClosed E.ultrametricityClosed))

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse