import canonicalLaneMathlib.DualAlgebraStructure

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure DualAlgebra where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  involution : carrier → carrier
  unit : carrier
  associativity : ∀ a b c, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  involutionProperties : ∀ a b, involution (multiplication a b) = multiplication (involution b) (involution a) ∧ involution (involution a) = a
  unitProperties : ∀ a, multiplication a unit = a ∧ multiplication unit a = a

structure DualAlgebraAdmittedObject where
  dualAlgebra : DualAlgebra
  weaklyClosed : Prop
  singlyGenerated : Prop
  conclusion : weaklyClosed ∧ singlyGenerated

def DualAlgebraWitnessClosed (O : DualAlgebraAdmittedObject) : Prop :=
  O.weaklyClosed ∧ O.singlyGenerated

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse