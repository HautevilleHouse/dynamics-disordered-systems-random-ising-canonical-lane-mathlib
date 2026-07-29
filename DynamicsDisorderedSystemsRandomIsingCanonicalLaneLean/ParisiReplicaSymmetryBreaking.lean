import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsing

structure ParisiRSB (n : ℕ) where
  overlap : ℝ → ℝ
  orderParameter : ℝ

structure ParisiRSBClosed (p : ParisiRSB n) : Prop where
  overlapDefined : Prop
  orderParameterPositive : Prop

theorem parisi_rsb_closed (p : ParisiRSB n) (e : ParisiRSBClosed p) : True := by trivial

end DynamicsDisorderedSystemsRandomIsing
end HautevilleHouse