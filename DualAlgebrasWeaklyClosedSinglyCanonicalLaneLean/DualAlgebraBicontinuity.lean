import canonicalLaneMathlib.AdmissibleClass
import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.DualOperatorAlgebra

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure DualAlgebraBicontinuityPackge (A : DualOperatorAlgebra) where
  predual : Type u
  pairing : A.carrier → predual → ℂ
  leftContinuous : Prop
  rightContinuous : Prop
  separatesPoints : Prop

structure DualAlgebraBicontinuityEvidence {A : DualOperatorAlgebra} (P : DualAlgebraBicontinuityPackge A) where
  leftContinuousClosed : P.leftContinuous
  rightContinuousClosed : P.rightContinuous
  separatesPointsClosed : P.separatesPoints

def DualAlgebraBicontinuityClosed {A : DualOperatorAlgebra} (P : DualAlgebraBicontinuityPackge A) : Prop :=
  P.leftContinuous ∧ P.rightContinuous ∧ P.separatesPoints

theorem dual_algebra_bicontinuity_closed_from_evidence
    {A : DualOperatorAlgebra} (P : DualAlgebraBicontinuityPackge A)
    (E : DualAlgebraBicontinuityEvidence P) : DualAlgebraBicontinuityClosed P := by
  exact And.intro E.leftContinuousClosed
    (And.intro E.rightContinuousClosed E.separatesPointsClosed)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse