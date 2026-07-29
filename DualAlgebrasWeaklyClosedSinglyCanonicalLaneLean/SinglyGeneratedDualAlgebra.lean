import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure SinglyGeneratedDualAlgebra (A : Type*) [Ring A] where
  generator : A
  unit : A
  multiplicationClosed : Prop
  involution : A → A
  involutionProperties : Prop
  weakClosedness : Prop
  generatorTerm : generator = 1
  unitTerm : unit = 1
  multiplicationClosedTerm : multiplicationClosed
  involutionPropertiesTerm : involutionProperties
  weakClosednessTerm : weakClosedness

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse