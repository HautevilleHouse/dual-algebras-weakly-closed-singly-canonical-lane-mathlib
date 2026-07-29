import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.DualAlgebra

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure WeaklyClosedSubalgebra (A : DualAlgebra ℂ) where
  subalgebra : Set A.carrier
  isSubalgebra : Subalgebra ℂ A.carrier subalgebra
  weaklyClosed : ClosureOperator (Subalgebra ℂ A.carrier) subalgebra
  evidence : weaklyClosed

structure WeaklyClosedEvidence (A : DualAlgebra ℂ) (W : WeaklyClosedSubalgebra A) where
  isSubalgebraClosed : W.isSubalgebra
  weaklyClosedClosed : W.weaklyClosed

def WeaklyClosedSubalgebraClosed (A : DualAlgebra ℂ) (W : WeaklyClosedSubalgebra A) : Prop :=
  W.isSubalgebra ∧ W.weaklyClosed

theorem weakly_closed_subalgebra_closed_from_evidence
    (A : DualAlgebra ℂ) (W : WeaklyClosedSubalgebra A) (E : WeaklyClosedEvidence A W) :
    WeaklyClosedSubalgebraClosed A W := by
  exact And.intro E.isSubalgebraClosed E.weaklyClosedClosed

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse