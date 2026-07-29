import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure SpinGlassHamiltonianPackage where
  lattice : Type u
  spinDimension : Nat
  couplingMatrix : lattice → lattice → Float
  randomField : lattice → Float
  disorderRealization : Prop
  hamiltonianDefined : Prop
  disorderRealizationTerm : disorderRealization
  hamiltonianDefinedTerm : hamiltonianDefined

structure SpinGlassHamiltonianEvidence (S : SpinGlassHamiltonianPackage) where
  disorderRealizationClosed : S.disorderRealization
  hamiltonianDefinedClosed : S.hamiltonianDefined

def SpinGlassHamiltonianClosed (S : SpinGlassHamiltonianPackage) : Prop :=
  S.disorderRealization ∧ S.hamiltonianDefined

theorem spin_glass_hamiltonian_closed_from_evidence (S : SpinGlassHamiltonianPackage)
    (E : SpinGlassHamiltonianEvidence S) : SpinGlassHamiltonianClosed S := by
  exact And.intro E.disorderRealizationClosed E.hamiltonianDefinedClosed

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse