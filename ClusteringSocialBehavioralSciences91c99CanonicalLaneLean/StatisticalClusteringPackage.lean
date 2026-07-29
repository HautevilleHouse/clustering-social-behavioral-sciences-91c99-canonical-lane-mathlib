import canonicalLaneMathlib.AdmissibleClass
import ClusteringSocialBehavioralSciences91c99CanonicalLaneLean.BehavioralLayerPackage

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure StatisticalClusteringPackage (A : AdmissibleClass) (B : BehavioralLayerPackage A) where
  distanceMetric : Prop
  linkageCriterion : Prop
  clusterValidity : Prop
  interpretability : Prop

structure StatisticalClusteringEvidence (A : AdmissibleClass) (B : BehavioralLayerPackage A)
    (S : StatisticalClusteringPackage A B) where
  distanceMetricClosed : S.distanceMetric
  linkageCriterionClosed : S.linkageCriterion
  clusterValidityClosed : S.clusterValidity
  interpretabilityClosed : S.interpretability

def StatisticalClusteringClosed (A : AdmissibleClass) (B : BehavioralLayerPackage A)
    (S : StatisticalClusteringPackage A B) : Prop :=
  S.distanceMetric ∧ S.linkageCriterion ∧ S.clusterValidity ∧ S.interpretability

theorem statistical_clustering_closed_from_evidence (A : AdmissibleClass) (B : BehavioralLayerPackage A)
    (S : StatisticalClusteringPackage A B) (E : StatisticalClusteringEvidence A B S) :
    StatisticalClusteringClosed A B S := by
  exact And.intro E.distanceMetricClosed
    (And.intro E.linkageCriterionClosed
      (And.intro E.clusterValidityClosed E.interpretabilityClosed))

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse