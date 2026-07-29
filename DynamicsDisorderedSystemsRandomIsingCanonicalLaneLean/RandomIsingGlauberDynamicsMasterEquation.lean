import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure GlauberDynamics where
  spinConfigurationSpace : Type u
  transitionRates : Type v
  masterEquation : Prop
  detailedBalance : Prop
  relaxationToEquilibrium : Prop
  dynamicalExponent : Prop

structure GlauberDynamicsEvidence (G : GlauberDynamics) where
  masterEquationClosed : G.masterEquation
  detailedBalanceClosed : G.detailedBalance
  relaxationToEquilibriumClosed : G.relaxationToEquilibrium
  dynamicalExponentClosed : G.dynamicalExponent

def GlauberDynamicsClosed (G : GlauberDynamics) : Prop :=
  G.masterEquation ∧ G.detailedBalance ∧
  G.relaxationToEquilibrium ∧ G.dynamicalExponent

theorem glauber_dynamics_closed_from_evidence (G : GlauberDynamics)
    (E : GlauberDynamicsEvidence G) : GlauberDynamicsClosed G := by
  exact And.intro E.masterEquationClosed
    (And.intro E.detailedBalanceClosed
      (And.intro E.relaxationToEquilibriumClosed E.dynamicalExponentClosed))

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse