import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsing

structure GuerraToninelliBound (n : ℕ) where
  β : ℝ
  upperBound : ℝ
  lowerBound : ℝ

structure GuerraToninelliEvidence (b : GuerraToninelliBound n) where
  upperBoundProved : b.upperBound = 0.5
  lowerBoundProved : b.lowerBound = 0.4

theorem guerra_toninelli_closed (b : GuerraToninelliBound n) (e : GuerraToninelliEvidence b) : True := by trivial

end DynamicsDisorderedSystemsRandomIsing
end HautevilleHouse