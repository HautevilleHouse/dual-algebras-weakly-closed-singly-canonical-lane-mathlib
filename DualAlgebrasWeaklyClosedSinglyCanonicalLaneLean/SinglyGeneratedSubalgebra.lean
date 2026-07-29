import canonicalLaneMathlib.AdmissibleClass
import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.DualOperatorAlgebra

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure SinglyGeneratedSubalgebra (A : DualOperatorAlgebra) where
  generator : A.carrier
  subalgebra : Set A.carrier
  generatedByGenerator : Prop
  weaklyClosed : Prop
  singlyGenerated : Prop

structure SinglyGeneratedSubalgebraEvidence {A : DualOperatorAlgebra} (S : SinglyGeneratedSubalgebra A) where
  generatedByGeneratorClosed : S.generatedByGenerator
  weaklyClosedClosed : S.weaklyClosed
  singlyGeneratedClosed : S.singlyGenerated

def SinglyGeneratedSubalgebraClosed {A : DualOperatorAlgebra} (S : SinglyGeneratedSubalgebra A) : Prop :=
  S.generatedByGenerator ∧ S.weaklyClosed ∧ S.singlyGenerated

theorem singly_generated_subalgebra_closed_from_evidence
    {A : DualOperatorAlgebra} (S : SinglyGeneratedSubalgebra A)
    (E : SinglyGeneratedSubalgebraEvidence S) : SinglyGeneratedSubalgebraClosed S := by
  exact And.intro E.generatedByGeneratorClosed
    (And.intro E.weaklyClosedClosed E.singlyGeneratedClosed)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse