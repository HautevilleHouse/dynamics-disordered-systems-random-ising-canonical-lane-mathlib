import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure SpinGlassPartitionFunction where
  nSites : Nat
  couplings : Type u
  bondRealizations : Type v
  partitionFunctionReal : Prop
  freeEnergyExtensive : Prop
  selfAveragingHolds : Prop
  replicaTrickApplicable : Prop

structure SpinGlassPartitionEvidence (Z : SpinGlassPartitionFunction) where
  partitionFunctionRealClosed : Z.partitionFunctionReal
  freeEnergyExtensiveClosed : Z.freeEnergyExtensive
  selfAveragingHoldsClosed : Z.selfAveragingHolds
  replicaTrickApplicableClosed : Z.replicaTrickApplicable

def SpinGlassPartitionClosed (Z : SpinGlassPartitionFunction) : Prop :=
  Z.partitionFunctionReal ∧ Z.freeEnergyExtensive ∧
  Z.selfAveragingHolds ∧ Z.replicaTrickApplicable

theorem spin_glass_partition_closed_from_evidence
    (Z : SpinGlassPartitionFunction) (E : SpinGlassPartitionEvidence Z) :
    SpinGlassPartitionClosed Z := by
  exact And.intro E.partitionFunctionRealClosed
    (And.intro E.freeEnergyExtensiveClosed
      (And.intro E.selfAveragingHoldsClosed E.replicaTrickApplicableClosed))

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse