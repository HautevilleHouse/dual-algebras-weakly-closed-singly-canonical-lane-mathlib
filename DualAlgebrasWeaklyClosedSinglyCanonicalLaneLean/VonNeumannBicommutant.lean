import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.DualAlgebra
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.WeaklyClosedSubalgebra

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure BicommutantPackage (A : DualAlgebra ℂ) where
  subalgebra : WeaklyClosedSubalgebra A
  commutant : WeaklyClosedSubalgebra A
  doubleCommutant : WeaklyClosedSubalgebra A
  bicommutantProperty : doubleCommutant.subalgebra = subalgebra.subalgebra
  evidence : bicommutantProperty

structure BicommutantEvidence {A : DualAlgebra ℂ} (B : BicommutantPackage A) where
  bicommutantPropertyClosed : B.bicommutantProperty

def BicommutantClosed {A : DualAlgebra ℂ} (B : BicommutantPackage A) : Prop :=
  B.bicommutantProperty

theorem bicommutant_closed_from_evidence
    {A : DualAlgebra ℂ} (B : BicommutantPackage A) (E : BicommutantEvidence B) :
    BicommutantClosed B := by
  exact E.bicommutantPropertyClosed

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse