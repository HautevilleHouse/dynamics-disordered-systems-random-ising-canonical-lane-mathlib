import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure SherringtonKirkpatrickModel where
  nSpins : Nat
  exchangeCouplings : Type u
  meanFieldAnsatz : Prop
  cavityMethodApplied : Prop
  saddlePointEquation : Prop
  orderParameter : Type v

structure SKModelEvidence (SK : SherringtonKirkpatrickModel) where
  meanFieldAnsatzClosed : SK.meanFieldAnsatz
  cavityMethodAppliedClosed : SK.cavityMethodApplied
  saddlePointEquationClosed : SK.saddlePointEquation

def SKModelClosed (SK : SherringtonKirkpatrickModel) : Prop :=
  SK.meanFieldAnsatz ∧ SK.cavityMethodApplied ∧ SK.saddlePointEquation

theorem sk_model_closed_from_evidence (SK : SherringtonKirkpatrickModel)
    (E : SKModelEvidence SK) : SKModelClosed SK := by
  exact And.intro E.meanFieldAnsatzClosed
    (And.intro E.cavityMethodAppliedClosed E.saddlePointEquationClosed)

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse