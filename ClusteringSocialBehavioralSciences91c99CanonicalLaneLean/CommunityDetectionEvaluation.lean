import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure CommunityDetectionResult where
  communityLabels : List Nat
  modularityScore : Float
  normalizedMutualInformation : Float
  evaluationMetricsDefined : Prop

structure EvaluationEvidence (R : CommunityDetectionResult) where
  modularityScoreClosed : R.modularityScore ∈ Set.Icc (-1.0) 1.0
  normalizedMutualInformationClosed : R.normalizedMutualInformation ∈ Set.Icc (0.0) (1.0)
  evaluationMetricsDefinedClosed : R.evaluationMetricsDefined

def EvaluationClosed (R : CommunityDetectionResult) : Prop :=
  R.evaluationMetricsDefined ∧ R.modularityScore ≥ -1.0 ∧ R.modularityScore ≤ 1.0 ∧
  R.normalizedMutualInformation ≥ 0.0 ∧ R.normalizedMutualInformation ≤ 1.0

theorem evaluation_closed_from_evidence (R : CommunityDetectionResult) (E : EvaluationEvidence R) :
    EvaluationClosed R := by
  have hm : R.modularityScore ≥ -1.0 := by linarith [Set.mem_Icc_iff.mp E.modularityScoreClosed]
  have hm' : R.modularityScore ≤ 1.0 := by linarith
  have hnmi : R.normalizedMutualInformation ≥ 0.0 := by linarith
  have hnmi' : R.normalizedMutualInformation ≤ 1.0 := by linarith
  exact And.intro E.evaluationMetricsDefinedClosed (And.intro hm (And.intro hm' (And.intro hnmi hnmi')))

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse
