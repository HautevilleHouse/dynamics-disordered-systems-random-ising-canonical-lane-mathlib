import DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure AdmissibleClass where
  object : RandomIsingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RandomIsingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse