import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure DualOperatorAlgebra where
  carrier : Type u
  algebraStructure : Type v
  multiplication : carrier → carrier → carrier
  involution : carrier → carrier
  operatorNorm : carrier → ℝ
  closedUnderWeakOperatorTopology : Prop
  multiplicativeClosureUnderInvolution : Prop
  normCompleteness : Prop

structure DualOperatorAlgebraEvidence (A : DualOperatorAlgebra) where
  closedUnderWeakOperatorTopologyClosed : A.closedUnderWeakOperatorTopology
  multiplicativeClosureUnderInvolutionClosed : A.multiplicativeClosureUnderInvolution
  normCompletenessClosed : A.normCompleteness

def DualOperatorAlgebraClosed (A : DualOperatorAlgebra) : Prop :=
  A.closedUnderWeakOperatorTopology ∧ A.multiplicativeClosureUnderInvolution ∧ A.normCompleteness

theorem dual_operator_algebra_closed_from_evidence (A : DualOperatorAlgebra) (E : DualOperatorAlgebraEvidence A) :
    DualOperatorAlgebraClosed A := by
  exact And.intro E.closedUnderWeakOperatorTopologyClosed
    (And.intro E.multiplicativeClosureUnderInvolutionClosed E.normCompletenessClosed)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse