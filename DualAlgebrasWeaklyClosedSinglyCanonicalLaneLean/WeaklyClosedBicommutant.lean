import canonicalLaneMathlib.AdmissibleClass
import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.DualOperatorAlgebra

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure WeaklyClosedBicommutantPackage (A : DualOperatorAlgebra) where
  bicommutantSet : Set A.carrier
  containsAlgebra : Prop
  weaklyClosed : Prop
  doubleCommutantEqualsClosure : Prop

structure WeaklyClosedBicommutantEvidence {A : DualOperatorAlgebra} (P : WeaklyClosedBicommutantPackage A) where
  containsAlgebraClosed : P.containsAlgebra
  weaklyClosedClosed : P.weaklyClosed
  doubleCommutantEqualsClosureClosed : P.doubleCommutantEqualsClosure

def WeaklyClosedBicommutantClosed {A : DualOperatorAlgebra} (P : WeaklyClosedBicommutantPackage A) : Prop :=
  P.containsAlgebra ∧ P.weaklyClosed ∧ P.doubleCommutantEqualsClosure

theorem weakly_closed_bicommutant_closed_from_evidence
    {A : DualOperatorAlgebra} (P : WeaklyClosedBicommutantPackage A)
    (E : WeaklyClosedBicommutantEvidence P) : WeaklyClosedBicommutantClosed P := by
  exact And.intro E.containsAlgebraClosed
    (And.intro E.weaklyClosedClosed E.doubleCommutantEqualsClosureClosed)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse