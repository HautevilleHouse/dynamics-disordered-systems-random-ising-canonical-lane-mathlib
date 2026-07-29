import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure RandomCouplingDistribution where
  couplingType : Type u
  mean : ℝ
  variance : ℝ
  tailDecay : Prop
  symmetry : Prop
  support : Set ℝ

def randomCouplingDistributionClosed (D : RandomCouplingDistribution) : Prop :=
  D.mean = 0 ∧ D.variance = 1 ∧ D.tailDecay ∧ D.symmetry

structure SpinConfig (n : ℕ) where
  spins : Fin n → ℤ₂
  energy : ℝ
  magnetization : ℝ

structure RandomIsingInstance (n : ℕ) where
  graph : SimpleGraph (Fin n)
  couplings : Fin (Finset.card (Finset.filter (λ e => True) (Finset.offDiag (Finset.univ : Finset (Fin n × Fin n))))) → ℝ
  field : Fin n → ℝ
  inverseTemperature : ℝ
  couplingDistribution : RandomCouplingDistribution

structure DisorderAveragePackage where
  sampleSpace : Type u
  disorderMeasure : MeasureTheory.Measure sampleSpace
  averageFreeEnergy : ℝ
  averageMagnetization : ℝ
  correlationFunction : Fin 2 → ℝ

def disorderAverageClosed (D : DisorderAveragePackage) : Prop :=
  D.averageFreeEnergy > -∞ ∧ D.averageMagnetization = 0

structure ReplicaTrickPackage where
  replicaCount : ℕ
  replicatedSystem : Type u
  overlapMatrix : Matrix (Fin replicaCount) (Fin replicaCount) ℝ
  saddlePointEquation : Prop
  replicaSymmetricSolution : Prop

def replicaTrickClosed (R : ReplicaTrickPackage) : Prop :=
  R.replicaCount ≥ 2 ∧ R.replicaSymmetricSolution

structure SherringtonKirkpatrickModel where
  n : ℕ
  couplings : Matrix (Fin n) (Fin n) ℝ
  field : Fin n → ℝ
  inverseTemperature : ℝ
  parisiFunctional : ℝ → ℝ → ℝ
  parisiParameter : ℝ
  freeEnergy : ℝ

def sherringtonKirkpatrickClosed (S : SherringtonKirkpatrickModel) : Prop :=
  S.parisiParameter = 1 ∧ S.freeEnergy > -∞

structure DynamicalMeanFieldTheory where
  effectiveProcess : Type u
  memoryKernel : ℝ → ℝ
  selfConsistencyEquation : Prop
  longTimeLimit : Prop

def dynamicalMeanFieldClosed (D : DynamicalMeanFieldTheory) : Prop :=
  D.selfConsistencyEquation ∧ D.longTimeLimit

structure AgeingScaling where
  correlationFunction : ℝ → ℝ → ℝ
  ageingExponent : ℝ
  fluctuationDissipationRatio : ℝ
  waitingTimeScaling : Prop

def ageingScalingClosed (A : AgeingScaling) : Prop :=
  A.ageingExponent > 0 ∧ A.fluctuationDissipationRatio = 1

class AdmissibleRandomIsing where
  distribution : RandomCouplingDistribution
  instance : RandomIsingInstance 100
  disorderAverage : DisorderAveragePackage
  replicaTrick : ReplicaTrickPackage
  sherringtonKirkpatrick : SherringtonKirkpatrickModel
  dynamicalMeanField : DynamicalMeanFieldTheory
  ageing : AgeingScaling

def DynDisSysRanIsingAdmissibleClass : AdmissibleClass where
  object := ()
  endpointSatisfied := False
  remainderRecorded := True
  gateWitness := Or.inr trivial

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse