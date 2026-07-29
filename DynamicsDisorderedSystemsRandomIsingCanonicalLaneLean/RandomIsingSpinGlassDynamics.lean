import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure SpinGlassDynamicsPackage where
  spinConfigSpace : Type u
  timeDomain : Type v
  hamiltonian : Type w
  disorderRealization : Prop
  glauberDynamicsGenerator : Prop
  fluctuationDissipationRelation : Prop

structure SpinGlassDynamicsEvidence (P : SpinGlassDynamicsPackage) where
  disorderRealizationClosed : P.disorderRealization
  glauberDynamicsGeneratorClosed : P.glauberDynamicsGenerator
  fluctuationDissipationRelationClosed : P.fluctuationDissipationRelation

def SpinGlassDynamicsClosed (P : SpinGlassDynamicsPackage) : Prop :=
  P.disorderRealization ∧ P.glauberDynamicsGenerator ∧ P.fluctuationDissipationRelation

theorem spin_glass_dynamics_closed_from_evidence (P : SpinGlassDynamicsPackage)
    (E : SpinGlassDynamicsEvidence P) : SpinGlassDynamicsClosed P := by
  exact And.intro E.disorderRealizationClosed
    (And.intro E.glauberDynamicsGeneratorClosed E.fluctuationDissipationRelationClosed)

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse