import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean

structure ATLinePackage where
  transitionTemperature : Float
  criticalExponent : Float
  replicaSymmetryBreaking : Prop
  deAlmeidaThoulessLine : Prop
  replicaSymmetryBreakingTerm : replicaSymmetryBreaking
  deAlmeidaThoulessLineTerm : deAlmeidaThoulessLine

struct ATLineEvidence (A : ATLinePackage) where
  replicaSymmetryBreakingClosed : A.replicaSymmetryBreaking
  deAlmeidaThoulessLineClosed : A.deAlmeidaThoulessLine

def ATLineClosed (A : ATLinePackage) : Prop :=
  A.replicaSymmetryBreaking ∧ A.deAlmeidaThoulessLine

theorem at_line_closed_from_evidence (A : ATLinePackage) (E : ATLineEvidence A) :
    ATLineClosed A := by
  exact And.intro E.replicaSymmetryBreakingClosed E.deAlmeidaThoulessLineClosed

end DynamicsDisorderedSystemsRandomIsingCanonicalLaneLean
end HautevilleHouse