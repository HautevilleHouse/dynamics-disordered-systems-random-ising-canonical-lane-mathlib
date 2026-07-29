import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure ReplicaTrickPackage where
  replicaNumber : Nat
  replicatedPartitionFunction : Prop
  replicaLimit : Prop
  annealedAverage : Prop
  quenchedAverage : Prop
  replicatedPartitionFunctionTerm : replicatedPartitionFunction
  replicaLimitTerm : replicaLimit
  annealedAverageTerm : annealedAverage
  quenchedAverageTerm : quenchedAverage

structure ReplicaTrickEvidence (R : ReplicaTrickPackage) where
  replicatedPartitionFunctionClosed : R.replicatedPartitionFunction
  replicaLimitClosed : R.replicaLimit
  annealedAverageClosed : R.annealedAverage
  quenchedAverageClosed : R.quenchedAverage

def ReplicaTrickClosed (R : ReplicaTrickPackage) : Prop :=
  R.replicatedPartitionFunction ∧ R.replicaLimit ∧ R.annealedAverage ∧ R.quenchedAverage

theorem replica_trick_closed_from_evidence (R : ReplicaTrickPackage) (E : ReplicaTrickEvidence R) :
    ReplicaTrickClosed R := by
  exact And.intro E.replicatedPartitionFunctionClosed
    (And.intro E.replicaLimitClosed
      (And.intro E.annealedAverageClosed E.quenchedAverageClosed))

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse