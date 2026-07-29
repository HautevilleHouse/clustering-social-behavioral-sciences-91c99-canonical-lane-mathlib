import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure ClusterBehavioralModel where
  population : Type u
  behavioralSpace : Type v
  distanceFunction : behavioralSpace → behavioralSpace → ℝ
  similarityThreshold : ℝ
  densityFunction : behavioralSpace → ℝ
  spatialCoherence : Prop

structure ClusterBehavioralEvidence (M : ClusterBehavioralModel) where
  similarityThresholdPos : M.similarityThreshold > 0
  densityFunctionNonneg : ∀ x : M.behavioralSpace, M.densityFunction x ≥ 0
  spatialCoherenceClosed : M.spatialCoherence

def ClusterBehavioralClosed (M : ClusterBehavioralModel) : Prop :=
  M.similarityThreshold > 0 ∧ (∀ x : M.behavioralSpace, M.densityFunction x ≥ 0) ∧ M.spatialCoherence

theorem cluster_behavioral_closed_from_evidence (M : ClusterBehavioralModel) (E : ClusterBehavioralEvidence M) :
    ClusterBehavioralClosed M := by
  exact And.intro E.similarityThresholdPos (And.intro E.densityFunctionNonneg E.spatialCoherenceClosed)

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse