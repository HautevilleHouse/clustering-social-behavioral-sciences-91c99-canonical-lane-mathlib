import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure BehavioralSegmentationPackage where
  behaviorVariables : List String
  segmentProfiles : List (List Float)
  segmentSizes : List Nat
  homogeneityMeasure : Prop
  separationMeasure : Prop

structure BehavioralSegmentationEvidence (B : BehavioralSegmentationPackage) where
  behaviorVariablesDefined : B.behaviorVariables.length > 0
  segmentProfilesMatchVariables : ∀ p ∈ B.segmentProfiles, p.length = B.behaviorVariables.length
  segmentSizesPositive : ∀ s ∈ B.segmentSizes, s > 0
  homogeneityClosed : B.homogeneityMeasure
  separationClosed : B.separationMeasure

def BehavioralSegmentationClosed (B : BehavioralSegmentationPackage) : Prop :=
  B.homogeneityMeasure ∧ B.separationMeasure

theorem behavioral_segmentation_closed_from_evidence (B : BehavioralSegmentationPackage) (E : BehavioralSegmentationEvidence B) :
    BehavioralSegmentationClosed B := by
  exact And.intro E.homogeneityClosed E.separationClosed

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse