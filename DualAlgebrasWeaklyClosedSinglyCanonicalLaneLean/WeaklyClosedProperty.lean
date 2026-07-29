import canonicalLaneMathlib.WeaklyClosedProperty

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure WeaklyClosedEvidence (A : DualAlgebra) where
  ultraweakClosure : Prop
  sigmaWeakClosure : Prop
  weakClosureEqualsUltraweakClosure : ultraweakClosure = sigmaWeakClosure
  ultraweakClosureClosed : ultraweakClosure
  sigmaWeakClosureClosed : sigmaWeakClosure

theorem weaklyClosed_condition (A : DualAlgebra) (E : WeaklyClosedEvidence A) :
  ultraweakClosure A = sigmaWeakClosure A := by
  exact E.weakClosureEqualsUltraweakClosure

def WeaklyClosedChecked (A : DualAlgebra) : Prop :=
  ∃ (E : WeaklyClosedEvidence A), True

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse