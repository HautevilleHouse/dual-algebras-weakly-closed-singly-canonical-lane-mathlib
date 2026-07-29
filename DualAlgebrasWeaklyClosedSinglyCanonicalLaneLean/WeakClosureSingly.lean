import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure WeakClosureSinglyPackage (A : AdmissibleClass) where
  weakOperator : Prop
  singlyGenerated : Prop
  weaklyClosed : Prop
  weakOperatorTerm : weakOperator
  singlyGeneratedTerm : singlyGenerated
  weaklyClosedTerm : weaklyClosed

def WeakClosureSinglyClosed (P : WeakClosureSinglyPackage A) : Prop :=
  P.weakOperator ∧ P.singlyGenerated ∧ P.weaklyClosed

theorem weak_closure_singly_closed_from_package (P : WeakClosureSinglyPackage A) :
    WeakClosureSinglyClosed P := by
  exact And.intro P.weakOperatorTerm (And.intro P.singlyGeneratedTerm P.weaklyClosedTerm)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse
