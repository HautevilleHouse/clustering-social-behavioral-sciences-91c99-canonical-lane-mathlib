import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure ClusterValidationCriterion where
  clusterAssignment : Type u
  groundTruth : Type v
  criterionFunction : clusterAssignment → groundTruth → ℝ
  criterionThreshold : ℝ
  validationClosed : Prop

structure ClusterValidationEvidence (V : ClusterValidationCriterion) where
  criterionThresholdPos : V.criterionThreshold > 0
  criterionFunctionBounded : ∃ (M : ℝ), ∀ (a : V.clusterAssignment) (g : V.groundTruth), V.criterionFunction a g ≤ M
  validationClosedTerm : V.validationClosed

def ClusterValidationCriterionClosed (V : ClusterValidationCriterion) : Prop :=
  V.criterionThreshold > 0 ∧ (∃ (M : ℝ), ∀ (a : V.clusterAssignment) (g : V.groundTruth), V.criterionFunction a g ≤ M) ∧ V.validationClosed

theorem cluster_validation_closed_from_evidence (V : ClusterValidationCriterion) (E : ClusterValidationEvidence V) :
    ClusterValidationCriterionClosed V := by
  exact And.intro E.criterionThresholdPos (And.intro E.criterionFunctionBounded E.validationClosedTerm)

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse