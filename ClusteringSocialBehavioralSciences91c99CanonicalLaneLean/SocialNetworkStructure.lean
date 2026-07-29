import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure SocialNetworkGraph where
  Nodes : Type
  Edges : Type
  adjacencyFunction : Edges -> Nodes -> Nodes -> Prop
  symmetricCondition : Prop
  noSelfLoops : Prop
  connectednessAssumption : Prop

structure GraphConnectivityEvidence (G : SocialNetworkGraph) where
  symmetricConditionClosed : G.symmetricCondition
  noSelfLoopsClosed : G.noSelfLoops
  connectednessAssumptionClosed : G.connectednessAssumption

def GraphConnectivityClosed (G : SocialNetworkGraph) : Prop :=
  G.symmetricCondition ∧ G.noSelfLoops ∧ G.connectednessAssumption

theorem graph_connectivity_closed_from_evidence (G : SocialNetworkGraph) (E : GraphConnectivityEvidence G) :
    GraphConnectivityClosed G := by
  exact And.intro E.symmetricConditionClosed (And.intro E.noSelfLoopsClosed E.connectednessAssumptionClosed)

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse
