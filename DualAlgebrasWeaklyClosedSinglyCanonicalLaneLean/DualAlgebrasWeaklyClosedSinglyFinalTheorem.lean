import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

def ConstrainedDualAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dual_algebra_endgame (A : AdmissibleClass) :
    ConstrainedDualAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse
