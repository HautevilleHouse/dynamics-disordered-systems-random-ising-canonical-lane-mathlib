import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure FunctionalRenormalizationGroup where
  disorderDistribution : Type u
  cumulantExpansion : Type v
  wilsonFlow : Prop
  fixedPointAnalysis : Prop
  criticalExponents : Prop
  larkinLength : Prop

structure FRGEvidence (F : FunctionalRenormalizationGroup) where
  wilsonFlowClosed : F.wilsonFlow
  fixedPointAnalysisClosed : F.fixedPointAnalysis
  criticalExponentsClosed : F.criticalExponents
  larkinLengthClosed : F.larkinLength

def FunctionalRenormalizationGroupClosed (F : FunctionalRenormalizationGroup) : Prop :=
  F.wilsonFlow ∧ F.fixedPointAnalysis ∧
  F.criticalExponents ∧ F.larkinLength

theorem functional_renormalization_group_closed_from_evidence
    (F : FunctionalRenormalizationGroup) (E : FRGEvidence F) :
    FunctionalRenormalizationGroupClosed F := by
  exact And.intro E.wilsonFlowClosed
    (And.intro E.fixedPointAnalysisClosed
      (And.intro E.criticalExponentsClosed E.larkinLengthClosed))

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse