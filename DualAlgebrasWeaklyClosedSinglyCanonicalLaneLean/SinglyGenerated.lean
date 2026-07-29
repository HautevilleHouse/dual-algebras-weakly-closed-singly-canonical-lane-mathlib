import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.DualAlgebra
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.WeaklyClosedSubalgebra

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure SinglyGeneratedElement (A : DualAlgebra ℂ) where
  generator : A.carrier
  generatedSubalgebra : WeaklyClosedSubalgebra A
  generationProperty : generatedSubalgebra.subalgebra = Algebra.adjoin ℂ {generator}
  evidence : generationProperty

structure SinglyGeneratedEvidence (A : DualAlgebra ℂ) (S : SinglyGeneratedElement A) where
  generationPropertyClosed : S.generationProperty

def SinglyGeneratedClosed (A : DualAlgebra ℂ) (S : SinglyGeneratedElement A) : Prop :=
  S.generationProperty

theorem singly_generated_closed_from_evidence
    (A : DualAlgebra ℂ) (S : SinglyGeneratedElement A) (E : SinglyGeneratedEvidence A S) :
    SinglyGeneratedClosed A S := by
  exact E.generationPropertyClosed

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse