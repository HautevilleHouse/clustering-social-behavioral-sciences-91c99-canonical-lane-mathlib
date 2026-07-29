import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure ClusteringAlgorithm where
  algorithmID : Nat
  inputGraph : SocialNetworkGraph
  outputClusters : Prop
  clusterPropertiesDefined : Prop
  convergenceCondition : Prop

structure ClusteringEvidence (C : ClusteringAlgorithm) where
  outputClustersClosed : C.outputClusters
  clusterPropertiesDefinedClosed : C.clusterPropertiesDefined
  convergenceConditionClosed : C.convergenceCondition

def ClusteringClosed (C : ClusteringAlgorithm) : Prop :=
  C.outputClusters ∧ C.clusterPropertiesDefined ∧ C.convergenceCondition

theorem clustering_closed_from_evidence (C : ClusteringAlgorithm) (E : ClusteringEvidence C) :
    ClusteringClosed C := by
  exact And.intro E.outputClustersClosed (And.intro E.clusterPropertiesDefinedClosed E.convergenceConditionClosed)

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse
