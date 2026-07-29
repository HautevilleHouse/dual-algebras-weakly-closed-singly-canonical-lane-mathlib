import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure WOTClosurePackage (A : AdmissibleClass) where
  netConvergence : Prop
  limitInAlgebra : Prop
  closureEqualsAlgebra : Prop
  netConvergenceTerm : netConvergence
  limitInAlgebraTerm : limitInAlgebra
  closureEqualsAlgebraTerm : closureEqualsAlgebra

def WOTClosureClosed (W : WOTClosurePackage A) : Prop :=
  W.netConvergence ∧ W.limitInAlgebra ∧ W.closureEqualsAlgebra

theorem wot_closure_closed_from_package (W : WOTClosurePackage A) :
    WOTClosureClosed W := by
  exact And.intro W.netConvergenceTerm (And.intro W.limitInAlgebraTerm W.closureEqualsAlgebraTerm)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse
