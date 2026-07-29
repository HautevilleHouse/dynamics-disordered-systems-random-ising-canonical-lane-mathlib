import DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean.ThermodynamicLimit

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure SherringtonKirkpatrickMeanFieldPackage {P : RandomIsingSpinGlassPackage}
    (T : ThermodynamicLimitPackage P) where
  infiniteRangeCouplings : Prop
  skHamiltonianDefined : Prop
  replicaTrickFormulation : Prop
  parisiOrderParameter : Prop

structure SherringtonKirkpatrickMeanFieldEvidence {P : RandomIsingSpinGlassPackage}
    {T : ThermodynamicLimitPackage P} (SK : SherringtonKirkpatrickMeanFieldPackage T) where
  infiniteRangeCouplingsClosed : SK.infiniteRangeCouplings
  skHamiltonianDefinedClosed : SK.skHamiltonianDefined
  replicaTrickFormulationClosed : SK.replicaTrickFormulation
  parisiOrderParameterClosed : SK.parisiOrderParameter

def SherringtonKirkpatrickMeanFieldClosed {P : RandomIsingSpinGlassPackage}
    {T : ThermodynamicLimitPackage P} (SK : SherringtonKirkpatrickMeanFieldPackage T) : Prop :=
  SK.infiniteRangeCouplings ∧ SK.skHamiltonianDefined ∧ SK.replicaTrickFormulation ∧ SK.parisiOrderParameter

theorem sherrington_kirkpatrick_mean_field_closed_from_evidence
    {P : RandomIsingSpinGlassPackage} {T : ThermodynamicLimitPackage P}
    (SK : SherringtonKirkpatrickMeanFieldPackage T)
    (E : SherringtonKirkpatrickMeanFieldEvidence SK) :
    SherrickpatrickMeanFieldClosed SK := by
  exact And.intro E.infiniteRangeCouplingsClosed
    (And.intro E.skHamiltonianDefinedClosed
      (And.intro E.replicaTrickFormulationClosed E.parisiOrderParameterClosed))

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse