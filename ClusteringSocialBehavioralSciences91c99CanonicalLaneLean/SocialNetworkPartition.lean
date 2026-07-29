import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure PartitionQualityPackage where
  modularityScore : Float
  conductanceBalanced : Prop
  stabilityUnderPerturbation : Prop
  conductanceBalancedClosed : conductanceBalanced
  stabilityUnderPerturbationClosed : stabilityUnderPerturbation

structure PartitionQualityEvidence (P : PartitionQualityPackage) where
  conductanceBalancedClosed : P.conductanceBalanced
  stabilityUnderPerturbationClosed : P.stabilityUnderPerturbation

def PartitionQualityClosed (P : PartitionQualityPackage) : Prop :=
  P.conductanceBalanced ∧ P.stabilityUnderPerturbation

theorem partition_quality_closed_from_evidence
    (P : PartitionQualityPackage) (E : PartitionQualityEvidence P) :
    PartitionQualityClosed P := by
  exact And.intro E.conductanceBalancedClosed E.stabilityUnderPerturbationClosed

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse