import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure DualAlgebraAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  dualAlgebra : Type
  weaklyClosed : Prop
  singlyGenerated : Prop
  conclusion : Prop

def DualAlgebraWitnessClosed (O : DualAlgebraAdmittedObject) : Prop :=
  O.conclusion

structure DualAlgebraTheoremStatement where
  sourceKey : String
  theoremName : String
  carriedRemainder : String

def sourceTheoremStatement : DualAlgebraTheoremStatement := {
  sourceKey := "dual-algebras-weakly-closed-singly-canonical-lane",
  theoremName := "DualAlgebraClosure",
  carriedRemainder := "Classical source boundary: weakly closed singly generated dual algebras closed under admissible-class bridge and gate."
}

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse
