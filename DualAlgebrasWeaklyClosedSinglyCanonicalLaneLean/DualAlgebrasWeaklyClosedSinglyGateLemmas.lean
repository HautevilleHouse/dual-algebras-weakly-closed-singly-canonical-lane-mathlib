import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse
