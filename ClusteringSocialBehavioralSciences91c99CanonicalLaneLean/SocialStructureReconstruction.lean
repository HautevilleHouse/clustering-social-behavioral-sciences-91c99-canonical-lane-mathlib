import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure SocialStructureReconstruction where
  rawSocialData : Type u
  reconstructedStructure : Type v
  reconstructionMap : rawSocialData → reconstructedStructure
  invertibility : Prop
  stabilityUnderPerturbation : Prop

structure SocialStructureReconstructionEvidence (R : SocialStructureReconstruction) where
  invertibilityClosed : R.invertibility
  stabilityUnderPerturbationClosed : R.stabilityUnderPerturbation

def SocialStructureReconstructionClosed (R : SocialStructureReconstruction) : Prop :=
  R.invertibility ∧ R.stabilityUnderPerturbation

theorem social_structure_reconstruction_closed_from_evidence (R : SocialStructureReconstruction) (E : SocialStructureReconstructionEvidence R) :
    SocialStructureReconstructionClosed R := by
  exact And.intro E.invertibilityClosed E.stabilityUnderPerturbationClosed

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse