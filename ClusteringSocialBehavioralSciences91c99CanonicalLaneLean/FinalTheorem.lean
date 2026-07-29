import canonicalLaneMathlib.AdmissibleClass
import ClusteringSocialBehavioralSciences91c99CanonicalLaneLean.BridgeLemmas
import ClusteringSocialBehavioralSciences91c99CanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

def ConstrainedClusterClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cluster_endgame (A : AdmissibleClass) : ConstrainedClusterClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse