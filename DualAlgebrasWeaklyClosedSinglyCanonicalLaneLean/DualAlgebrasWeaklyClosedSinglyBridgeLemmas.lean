import DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DualAlgebraWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DualAlgebrasWeaklyClosedSinglyCanonicalLaneLean
end HautevilleHouse
