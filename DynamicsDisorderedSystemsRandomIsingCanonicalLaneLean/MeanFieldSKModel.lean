import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure MeanFieldSKModelPackage where
  nSpins : Nat
  couplingVariance : Float
  infiniteRangeCoupling : Prop
  sherringtonKirkpatrickSolution : Prop
  infiniteRangeCouplingTerm : infiniteRangeCoupling
  sherringtonKirkpatrickSolutionTerm : sherringtonKirkpatrickSolution

structure MeanFieldSKModelEvidence (M : MeanFieldSKModelPackage) where
  infiniteRangeCouplingClosed : M.infiniteRangeCoupling
  sherringtonKirkpatrickSolutionClosed : M.sherringtonKirkpatrickSolution

def MeanFieldSKModelClosed (M : MeanFieldSKModelPackage) : Prop :=
  M.infiniteRangeCoupling ∧ M.sherringtonKirkpatrickSolution

theorem mean_field_sk_model_closed_from_evidence (M : MeanFieldSKModelPackage)
    (E : MeanFieldSKModelEvidence M) : MeanFieldSKModelClosed M := by
  exact And.intro E.infiniteRangeCouplingClosed E.sherringtonKirkpatrickSolutionClosed

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse