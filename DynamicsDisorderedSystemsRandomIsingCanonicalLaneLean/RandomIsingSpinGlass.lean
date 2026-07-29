import DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure RandomIsingSpinGlassPackage where
  spinConfigurations : Type u
  couplingDistribution : Type v
  hamiltonianFunction : Type w
  disorderRealization : Prop
  isingSpinVariables : Prop
  randomCouplingsIndependent : Prop
  finiteVolumeApproach : Prop

structure RandomIsingSpinGlassEvidence (P : RandomIsingSpinGlassPackage) where
  disorderRealizationClosed : P.disorderRealization
  isingSpinVariablesClosed : P.isingSpinVariables
  randomCouplingsIndependentClosed : P.randomCouplingsIndependent
  finiteVolumeApproachClosed : P.finiteVolumeApproach

def RandomIsingSpinGlassClosed (P : RandomIsingSpinGlassPackage) : Prop :=
  P.disorderRealization ∧ P.isingSpinVariables ∧ P.randomCouplingsIndependent ∧ P.finiteVolumeApproach

theorem random_ising_spin_glass_closed_from_evidence
    (P : RandomIsingSpinGlassPackage) (E : RandomIsingSpinGlassEvidence P) :
    RandomIsingSpinGlassClosed P := by
  exact And.intro E.disorderRealizationClosed
    (And.intro E.isingSpinVariablesClosed
      (And.intro E.randomCouplingsIndependentClosed E.finiteVolumeApproachClosed))

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse