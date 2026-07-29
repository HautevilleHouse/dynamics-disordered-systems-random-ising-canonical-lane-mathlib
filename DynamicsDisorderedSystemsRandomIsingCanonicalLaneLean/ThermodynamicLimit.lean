import DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean.RandomIsingSpinGlass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure ThermodynamicLimitPackage {P : RandomIsingSpinGlassPackage} where
  freeEnergyDensity : Prop
  selfAveraging : Prop
  infiniteVolumeLimit : Prop
  surfaceCorrectionsBounded : Prop

structure ThermodynamicLimitEvidence {P : RandomIsingSpinGlassPackage} (T : ThermodynamicLimitPackage P) where
  freeEnergyDensityClosed : T.freeEnergyDensity
  selfAveragingClosed : T.selfAveraging
  infiniteVolumeLimitClosed : T.infiniteVolumeLimit
  surfaceCorrectionsBoundedClosed : T.surfaceCorrectionsBounded

def ThermodynamicLimitClosed {P : RandomIsingSpinGlassPackage} (T : ThermodynamicLimitPackage P) : Prop :=
  T.freeEnergyDensity ∧ T.selfAveraging ∧ T.infiniteVolumeLimit ∧ T.surfaceCorrectionsBounded

theorem thermodynamic_limit_closed_from_evidence
    {P : RandomIsingSpinGlassPackage} (T : ThermodynamicLimitPackage P)
    (E : ThermodynamicLimitEvidence T) : ThermodynamicLimitClosed T := by
  exact And.intro E.freeEnergyDensityClosed
    (And.intro E.selfAveragingClosed
      (And.intro E.infiniteVolumeLimitClosed E.surfaceCorrectionsBoundedClosed))

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse