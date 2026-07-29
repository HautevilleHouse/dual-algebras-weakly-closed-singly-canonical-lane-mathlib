import canonicalLaneMathlib.VonNeumannAlgebra

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure VonNeumannAlgebra where
  dualAlgebra : DualAlgebra
  dualPair : DualAlgebra
  commutantProperty : ∀ x : dualAlgebra.carrier, ∀ y : dualPair.carrier, multiplication x y = multiplication y x
  doubleCommutantTheorem : commutant (commutant dualAlgebra) = dualAlgebra

def PredualStructure (M : VonNeumannAlgebra) : Type u := M.dualPair.carrier

theorem vonNeumann_bicommutant (M : VonNeumannAlgebra) :
  commutant (commutant M.dualAlgebra) = M.dualAlgebra := by
  exact M.doubleCommutantTheorem

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse