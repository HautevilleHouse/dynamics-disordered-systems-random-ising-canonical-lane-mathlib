import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure ReplicaSymmetryBreaking where
  replicaMatrix : Type u
  parisiOrderParameter : Type v
  qMatrixStructure : Prop
  variationalFreeEnergy : Prop
  fullRSBSolution : Prop
  almeidaThoulessLine : Prop

structure RSBEvidence (R : ReplicaSymmetryBreaking) where
  qMatrixStructureClosed : R.qMatrixStructure
  variationalFreeEnergyClosed : R.variationalFreeEnergy
  fullRSBSolutionClosed : R.fullRSBSolution
  almeidaThoulessLineClosed : R.almeidaThoulessLine

def ReplicaSymmetryBreakingClosed (R : ReplicaSymmetryBreaking) : Prop :=
  R.qMatrixStructure ∧ R.variationalFreeEnergy ∧
  R.fullRSBSolution ∧ R.almeidaThoulessLine

theorem replica_symmetry_breaking_closed_from_evidence
    (R : ReplicaSymmetryBreaking) (E : RSBEvidence R) :
    ReplicaSymmetryBreakingClosed R := by
  exact And.intro E.qMatrixStructureClosed
    (And.intro E.variationalFreeEnergyClosed
      (And.intro E.fullRSBSolutionClosed E.almeidaThoulessLineClosed))

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse