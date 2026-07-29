import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure DualAlgebra (A : Type) where
  carrier : Type
  mul : carrier → carrier → carrier
  involution : carrier → carrier
  unit : carrier
  zero : carrier
  add : carrier → carrier → carrier
  smul : ℂ → carrier → carrier
  norm : carrier → ℝ
  isBanach : Prop
  isCStar : Prop
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  involutionInvolutive : ∀ a : carrier, involution (involution a) = a
  involutionAnti : ∀ a b : carrier, involution (mul a b) = mul (involution b) (involution a)
  cStarIdentity : ∀ a : carrier, norm (mul a (involution a)) = norm a ^ 2
  isBanachTerm : isBanach
  isCStarTerm : isCStar

structure DualAlgebraAdmissible where
  algebra : DualAlgebra ℂ
  weaklyClosed : Prop
  singlyGenerated : Prop
  closureCondition : algebra.weaklyClosed ∧ algebra.singlyGenerated

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse