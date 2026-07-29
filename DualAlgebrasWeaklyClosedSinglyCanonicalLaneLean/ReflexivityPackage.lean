import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.WeakClosureSingly

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure ReflexivityPackage (A : AdmissibleClass) where
  reflexiveOperator : Prop
  wotClosed : Prop
  doubleCommutant : Prop
  reflexiveOperatorTerm : reflexiveOperator
  wotClosedTerm : wotClosed
  doubleCommutantTerm : doubleCommutant

def ReflexivityClosed (R : ReflexivityPackage A) : Prop :=
  R.reflexiveOperator ∧ R.wotClosed ∧ R.doubleCommutant

theorem reflexivity_closed_from_package (R : ReflexivityPackage A) :
    ReflexivityClosed R := by
  exact And.intro R.reflexiveOperatorTerm (And.intro R.wotClosedTerm R.doubleCommutantTerm)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse
