import canonicalLaneMathlib.AdmissibleClass
import ClusteringSocialBehavioralSciences91c99CanonicalLaneLean.StatisticalClusteringPackage

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure ValidationAndInterpretationPackage (A : AdmissibleClass) (B : BehavioralLayerPackage A)
    (S : StatisticalClusteringPackage A B) where
  internalValidation : Prop
  externalValidation : Prop
  stabilityAnalysis : Prop
  domainInterpretation : Prop

structure ValidationAndInterpretationEvidence (A : AdmissibleClass) (B : BehavioralLayerPackage A)
    (S : StatisticalClusteringPackage A B) (V : ValidationAndInterpretationPackage A B S) where
  internalValidationClosed : V.internalValidation
  externalValidationClosed : V.externalValidation
  stabilityAnalysisClosed : V.stabilityAnalysis
  domainInterpretationClosed : V.domainInterpretation

def ValidationAndInterpretationClosed (A : AdmissibleClass) (B : BehavioralLayerPackage A)
    (S : StatisticalClusteringPackage A B) (V : ValidationAndInterpretationPackage A B S) : Prop :=
  V.internalValidation ∧ V.externalValidation ∧ V.stabilityAnalysis ∧ V.domainInterpretation

theorem validation_closed_from_evidence (A : AdmissibleClass) (B : BehavioralLayerPackage A)
    (S : StatisticalClusteringPackage A B) (V : ValidationAndInterpretationPackage A B S)
    (E : ValidationAndInterpretationEvidence A B S V) : ValidationAndInterpretationClosed A B S V := by
  exact And.intro E.internalValidationClosed
    (And.intro E.externalValidationClosed
      (And.intro E.stabilityAnalysisClosed E.domainInterpretationClosed))

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse