import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure ClusterObject where
  population : Type
  featureSpace : Type
  features : population -> featureSpace
  distanceMetric : featureSpace -> featureSpace -> ℝ

structure ClusterAssignmentResult where
  clusterLabels : population → ℕ
  numClusters : ℕ
  assignmentsWellDefined : Prop
  assignmentsWellDefinedTerm : assignmentsWellDefined

structure ClusteringSpace where
  objective : ClusterObject
  result : ClusterAssignmentResult

structure ClusteringAdmissibleClass extends AdmissibleClass where
  clusteringSpace : ClusteringSpace
  closureConditions : Prop

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse