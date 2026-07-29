import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

def ConstrainedDynDisSysRanIsingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosedBridge A ∧ gateClosedBridge A

theorem constrained_dyn_dis_sys_ran_ising_endgame (A : AdmissibleClass) :
    ConstrainedDynDisSysRanIsingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse