import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure ConsensusDynamicsPackage where
  updateRule : String
  convergenceCondition : Prop
  convergenceRate : Prop
  convergenceConditionClosed : convergenceCondition
  convergenceRateClosed : convergenceRate

structure ConsensusDynamicsEvidence (C : ConsensusDynamicsPackage) where
  convergenceConditionClosed : C.convergenceCondition
  convergenceRateClosed : C.convergenceRate

def ConsensusDynamicsClosed (C : ConsensusDynamicsPackage) : Prop :=
  C.convergenceCondition ∧ C.convergenceRate

theorem consensus_dynamics_closed_from_evidence
    (C : ConsensusDynamicsPackage) (E : ConsensusDynamicsEvidence C) :
    ConsensusDynamicsClosed C := by
  exact And.intro E.convergenceConditionClosed E.convergenceRateClosed

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse