import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure ValidationMetricsPackage where
  internalIndices : List String  -- e.g., Silhouette, Davies-Bouldin
  externalIndices : List String  -- e.g., Adjusted Rand, Mutual Information
  stabilityTest : Prop
  groundTruthAvailable : Prop

structure ValidationMetricsEvidence (V : ValidationMetricsPackage) where
  internalIndicesNonempty : V.internalIndices.length > 0
  externalIndicesNonempty : V.externalIndices.length > 0
  stabilityTestClosed : V.stabilityTest
  groundTruthAvailableClosed : V.groundTruthAvailable

def ValidationMetricsClosed (V : ValidationMetricsPackage) : Prop :=
  V.stabilityTest ∧ V.groundTruthAvailable

theorem validation_metrics_closed_from_evidence (V : ValidationMetricsPackage) (E : ValidationMetricsEvidence V) :
    ValidationMetricsClosed V := by
  exact And.intro E.stabilityTestClosed E.groundTruthAvailableClosed

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse