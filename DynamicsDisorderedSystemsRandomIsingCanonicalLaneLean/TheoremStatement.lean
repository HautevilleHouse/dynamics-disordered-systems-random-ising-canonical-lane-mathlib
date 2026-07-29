namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure RandomIsingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RandomIsingAdmittedObject where
  space : RandomIsingSpace
  finiteVolume : Prop
  disorderDistribution : Prop
  conclusion : Prop

def RandomIsingWitnessClosed (O : RandomIsingAdmittedObject) : Prop :=
  O.conclusion

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse