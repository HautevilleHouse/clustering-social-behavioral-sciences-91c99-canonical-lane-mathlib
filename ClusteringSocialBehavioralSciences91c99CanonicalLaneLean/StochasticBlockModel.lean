import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure StochasticBlockModel where
  vertexCount : Nat
  blockCount : Nat
  blockAssignment : List Nat
  intraBlockEdgeProbability : List Float
  interBlockEdgeProbability : Float
  likelihoodFunctionDefined : Prop

structure SBMEvidence (S : StochasticBlockModel) where
  likelihoodFunctionDefinedClosed : S.likelihoodFunctionDefined
  probabilitiesPositive : Prop
  blockAssignmentValid : Prop

def SBMClosed (S : StochasticBlockModel) : Prop :=
  S.likelihoodFunctionDefined ∧ S.intraBlockEdgeProbability ≠ [] ∧ S.interBlockEdgeProbability ≥ 0.0

theorem sbm_closed_from_evidence (S : StochasticBlockModel) (E : SBMEvidence S) :
    SBMClosed S := by
  refine And.intro E.likelihoodFunctionDefinedClosed ?_
  exact And.intro ?_ ?_

theorem sbm_probabilities_positive (S : StochasticBlockModel) (h : ∀ p ∈ S.intraBlockEdgeProbability, p > 0) :
    S.interBlockEdgeProbability > 0 := by
  sorry

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse
