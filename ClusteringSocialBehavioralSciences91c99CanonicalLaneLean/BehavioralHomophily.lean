import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure BehavioralHomophilyPackage where
  populationType : Type
  attributeType : Type
  similarityFunction : attributeType -> attributeType -> Prop
  homophilyAssumption : Prop
  edgeFormationRule : Prop

structure HomophilyEvidence (H : BehavioralHomophilyPackage) where
  homophilyAssumptionClosed : H.homophilyAssumption
  edgeFormationRuleClosed : H.edgeFormationRule
  similarityReflexive : H.similarityFunction a a

def HomophilyClosed (H : BehavioralHomophilyPackage) : Prop :=
  H.homophilyAssumption ∧ H.edgeFormationRule

theorem homophily_closed_from_evidence (H : BehavioralHomophilyPackage) (E : HomophilyEvidence H) :
    HomophilyClosed H := by
  exact And.intro E.homophilyAssumptionClosed E.edgeFormationRuleClosed

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse
