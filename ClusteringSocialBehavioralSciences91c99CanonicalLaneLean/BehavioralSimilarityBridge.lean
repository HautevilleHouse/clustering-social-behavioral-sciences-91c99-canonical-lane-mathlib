import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure BehavioralSimilarityPackage where
  similarityFunction : String
  invarianceProperties : Prop
  computationalTractability : Prop
  invariancePropertiesClosed : invarianceProperties
  computationalTractabilityClosed : computationalTractability

structure BehavioralSimilarityEvidence (B : BehavioralSimilarityPackage) where
  invariancePropertiesClosed : B.invarianceProperties
  computationalTractabilityClosed : B.computationalTractability

def BehavioralSimilarityClosed (B : BehavioralSimilarityPackage) : Prop :=
  B.invarianceProperties ∧ B.computationalTractability

theorem behavioral_similarity_closed_from_evidence
    (B : BehavioralSimilarityPackage) (E : BehavioralSimilarityEvidence B) :
    BehavioralSimilarityClosed B := by
  exact And.intro E.invariancePropertiesClosed E.computationalTractabilityClosed

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse