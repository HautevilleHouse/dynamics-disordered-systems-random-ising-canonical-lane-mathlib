import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure EntropyProductionPackage where
  trajectorySpace : Type u
  entropyProductionRate : Type v
  fluctuationTheorem : Prop
  detailedBalanceViolation : Prop
  largeDeviationPrinciple : Prop

structure EntropyProductionEvidence (P : EntropyProductionPackage) where
  fluctuationTheoremClosed : P.fluctuationTheorem
  detailedBalanceViolationClosed : P.detailedBalanceViolation
  largeDeviationPrincipleClosed : P.largeDeviationPrinciple

def EntropyProductionClosed (P : EntropyProductionPackage) : Prop :=
  P.fluctuationTheorem ∧ P.detailedBalanceViolation ∧ P.largeDeviationPrinciple

theorem entropy_production_closed_from_evidence (P : EntropyProductionPackage)
    (E : EntropyProductionEvidence P) : EntropyProductionClosed P := by
  exact And.intro E.fluctuationTheoremClosed
    (And.intro E.detailedBalanceViolationClosed E.largeDeviationPrincipleClosed)

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse