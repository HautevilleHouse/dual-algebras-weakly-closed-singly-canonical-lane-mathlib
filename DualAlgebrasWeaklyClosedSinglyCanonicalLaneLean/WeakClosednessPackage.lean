import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure WeakClosednessPackage where
  weakTopology : Type u
  cauchyFilter : Prop
  boundedness : Prop
  sequentialClosedness : Prop
  topologicalProperties : Prop

structure WeakClosednessEvidence (P : WeakClosednessPackage) where
  cauchyFilterClosed : P.cauchyFilter
  boundednessClosed : P.boundedness
  sequentialClosednessClosed : P.sequentialClosedness
  topologicalPropertiesClosed : P.topologicalProperties

def WeakClosednessClosed (P : WeakClosednessPackage) : Prop :=
  P.cauchyFilter ∧ P.boundedness ∧ P.sequentialClosedness ∧ P.topologicalProperties

theorem weak_closedness_closed_from_evidence (P : WeakClosednessPackage) (E : WeakClosednessEvidence P) : WeakClosednessClosed P := by
  exact And.intro E.cauchyFilterClosed
    (And.intro E.boundednessClosed
      (And.intro E.sequentialClosednessClosed E.topologicalPropertiesClosed))

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse