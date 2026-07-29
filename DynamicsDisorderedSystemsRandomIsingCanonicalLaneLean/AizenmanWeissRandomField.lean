import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsing

structure RandomFieldModel where
  h : ℝ → ℝ
  correlationLength : ℝ

structure RandomFieldClosed (r : RandomFieldModel) : Prop where
  hPositive : r.h 0 > 0
  correlationLengthFinite : r.correlationLength < ∞

theorem random_field_closed (r : RandomFieldModel) (e : RandomFieldClosed r) : True := by trivial

end DynamicsDisorderedSystemsRandomIsing
end HautevilleHouse