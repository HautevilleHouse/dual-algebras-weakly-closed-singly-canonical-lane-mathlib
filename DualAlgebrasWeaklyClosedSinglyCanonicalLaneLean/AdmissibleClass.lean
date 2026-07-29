import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

structure AdmissibleClass where
  object : DualAlgebraAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DualAlgebraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse
