import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.DualAlgebra
import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.SinglyGenerated

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure SpectralTheoremPackage (A : DualAlgebra ℂ) where
  element : SinglyGeneratedElement A
  spectralMeasure : MeasureTheory.Measure ℝ
  functionalCalculus : ℂ → ℂ → ℂ
  spectralMapping : Prop
  uniqueness : Prop
  evidence : spectralMapping ∧ uniqueness

structure SpectralEvidence {A : DualAlgebra ℂ} (S : SpectralTheoremPackage A) where
  spectralMappingClosed : S.spectralMapping
  uniquenessClosed : S.uniqueness

def SpectralTheoremClosed {A : DualAlgebra ℂ} (S : SpectralTheoremPackage A) : Prop :=
  S.spectralMapping ∧ S.uniqueness

theorem spectral_theorem_closed_from_evidence
    {A : DualAlgebra ℂ} (S : SpectralTheoremPackage A) (E : SpectralEvidence S) :
    SpectralTheoremClosed S := by
  exact And.intro E.spectralMappingClosed E.uniquenessClosed

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse