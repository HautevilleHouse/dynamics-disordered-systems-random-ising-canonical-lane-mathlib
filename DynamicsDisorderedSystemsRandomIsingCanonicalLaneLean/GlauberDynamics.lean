import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure GlauberDynamicsPackage where
  stateSpace : Type u
  transitionRate : stateSpace → stateSpace → Float
  detailedBalance : Prop
  ergodicity : Prop
  mixingTime : Prop
  detailedBalanceTerm : detailedBalance
  ergodicityTerm : ergodicity
  mixingTimeTerm : mixingTime

structure GlauberDynamicsEvidence (G : GlauberDynamicsPackage) where
  detailedBalanceClosed : G.detailedBalance
  ergodicityClosed : G.ergodicity
  mixingTimeClosed : G.mixingTime

def GlauberDynamicsClosed (G : GlauberDynamicsPackage) : Prop :=
  G.detailedBalance ∧ G.ergodicity ∧ G.mixingTime

theorem glauber_dynamics_closed_from_evidence (G : GlauberDynamicsPackage)
    (E : GlauberDynamicsEvidence G) : GlauberDynamicsClosed G := by
  exact And.intro E.detailedBalanceClosed
    (And.intro E.ergodicityClosed E.mixingTimeClosed)

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse