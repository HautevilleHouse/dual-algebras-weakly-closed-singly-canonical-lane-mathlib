import canonicalLaneMathlib.AdmissibleClass
import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.DualOperatorAlgebra
import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.WeaklyClosedBicommutant

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure KreinMilmanPackage (A : DualOperatorAlgebra) where
  stateSpace : Set (A.carrier → ℂ)
  convexCompactNonempty : Prop
  extremePoints : Set (A.carrier → ℂ)
  closureOfConvexHull : Prop

structure KreinMilmanEvidence {A : DualOperatorAlgebra} (K : KreinMilmanPackage A) where
  convexCompactNonemptyClosed : K.convexCompactNonempty
  extremePointsClosed : Set.Nonempty K.extremePoints
  closureOfConvexHullClosed : K.closureOfConvexHull

def KreinMilmanClosed {A : DualOperatorAlgebra} (K : KreinMilmanPackage A) : Prop :=
  K.convexCompactNonempty ∧ Set.Nonempty K.extremePoints ∧ K.closureOfConvexHull

theorem krein_milman_closed_from_evidence {A : DualOperatorAlgebra} (K : KreinMilmanPackage A)
    (E : KreinMilmanEvidence K) : KreinMilmanClosed K := by
  exact And.intro E.convexCompactNonemptyClosed
    (And.intro E.extremePointsClosed E.closureOfConvexHullClosed)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse