import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure AgingDynamicsPackage where
  waitingTime : Type u
  correlationFunction : Type v
  agingScaling : Prop
  cagingRegime : Prop
  effectiveTemperature : Prop

structure AgingDynamicsEvidence (P : AgingDynamicsPackage) where
  agingScalingClosed : P.agingScaling
  cagingRegimeClosed : P.cagingRegime
  effectiveTemperatureClosed : P.effectiveTemperature

def AgingDynamicsClosed (P : AgingDynamicsPackage) : Prop :=
  P.agingScaling ∧ P.cagingRegime ∧ P.effectiveTemperature

theorem aging_dynamics_closed_from_evidence (P : AgingDynamicsPackage)
    (E : AgingDynamicsEvidence P) : AgingDynamicsClosed P := by
  exact And.intro E.agingScalingClosed
    (And.intro E.cagingRegimeClosed E.effectiveTemperatureClosed)

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse