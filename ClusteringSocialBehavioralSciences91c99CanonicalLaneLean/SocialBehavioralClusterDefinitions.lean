import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure SubjectCohort where
  cohortId : String
  size : Nat
  attributes : List String
  homogeneityMeasure : Prop
  homogeneityMeasureClosed : homogeneityMeasure

structure BehavioralSignal where
  signalType : String
  timeSeriesData : List Float
  stationarity : Prop
  stationarityClosed : stationarity

structure SocialNetwork where
  agents : List String
  adjacencyMatrix : List (List Nat)
  connectivityProp : Prop
  connectivityPropClosed : connectivityProp

structure ClusteringObjective where
  objectiveType : String
  distanceMetric : String
  numberOfClusters : Nat
  clusterValidityIndex : Prop
  clusterValidityIndexClosed : clusterValidityIndex

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse