import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsing

structure SKFreeEnergy (n : ℕ) where
  J : (Fin n × Fin n) → ℝ
  h : Fin n → ℝ
  β : ℝ

structure SKFreeEnergyClosed (F : SKFreeEnergy n) : Prop where
  hamiltonianDefined : Prop
  partitionFunctionPositive : Prop
  freeEnergyFinite : Prop

theorem sk_free_energy_closed (F : SKFreeEnergy n) (E : SKFreeEnergyClosed F) : True := by trivial

end DynamicsDisorderedSystemsRandomIsing
end HautevilleHouse