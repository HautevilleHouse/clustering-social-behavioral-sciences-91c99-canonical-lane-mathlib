import canonicalLaneMathlib.AdmissibleClass
import ClusteringSocialBehavioralSciences91c99CanonicalLaneLean.ClusterAssignmentProcess

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let C : ClusteringAdmissibleClass := A
  C.clusteringSpace.result.assignmentsWellDefined

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let C : ClusteringAdmissibleClass := A
  exact C.clusteringSpace.result.assignmentsWellDefinedTerm

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse