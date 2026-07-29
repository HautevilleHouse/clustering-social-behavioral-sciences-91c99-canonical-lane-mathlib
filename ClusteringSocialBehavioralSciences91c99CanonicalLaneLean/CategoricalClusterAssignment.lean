import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure CategoricalAssignmentPackage where
  categoricalMapping : String
  assignmentConsistency : Prop
  interpretabilityMetric : Prop
  assignmentConsistencyClosed : assignmentConsistency
  interpretabilityMetricClosed : interpretabilityMetric

structure CategoricalAssignmentEvidence (C : CategoricalAssignmentPackage) where
  assignmentConsistencyClosed : C.assignmentConsistency
  interpretabilityMetricClosed : C.interpretabilityMetric

def CategoricalAssignmentClosed (C : CategoricalAssignmentPackage) : Prop :=
  C.assignmentConsistency ∧ C.interpretabilityMetric

theorem categorical_assignment_closed_from_evidence
    (C : CategoricalAssignmentPackage) (E : CategoricalAssignmentEvidence C) :
    CategoricalAssignmentClosed C := by
  exact And.intro E.assignmentConsistencyClosed E.interpretabilityMetricClosed

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse