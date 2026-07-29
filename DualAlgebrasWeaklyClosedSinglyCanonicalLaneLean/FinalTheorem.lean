import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.DualAlgebra
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.WeaklyClosedSubalgebra
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.SinglyGenerated
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.SpectralTheorem
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.VonNeumannBicommutant

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure AdmissibleClass where
  object : DualAlgebraAdmissible
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let alg := A.object.algebra
  WeaklyClosedSubalgebraClosed alg (WeaklyClosedSubalgebra.mk alg.carrier ?_ ?_) :=
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedDualAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  -- Construct the weak closure from the admissible object
  sorry

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

theorem constrained_dual_algebra_endgame (A : AdmissibleClass) :
    ConstrainedDualAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse