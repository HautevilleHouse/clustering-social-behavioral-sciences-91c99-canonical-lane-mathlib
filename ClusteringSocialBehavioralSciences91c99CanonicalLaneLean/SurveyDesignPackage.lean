import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure SurveyDesignPackage where
  targetPopulation : Type u
  samplingFrame : Type v
  stratificationVariables : List String
  clusterDefinition : List String
  designWeights : Prop
  primarySamplingUnits : Nat

structure SurveyDesignEvidence (S : SurveyDesignPackage) where
  targetPopulationClosed : S.targetPopulation → S.samplingFrame
  stratificationVariablesDefined : S.stratificationVariables.length > 0
  clusterDefinitionConsistent : Prop
  designWeightsComputed : S.designWeights
  primarySamplingUnitsPositive : S.primarySamplingUnits > 0

def SurveyDesignClosed (S : SurveyDesignPackage) : Prop :=
  S.designWeights ∧ S.primarySamplingUnits > 0

theorem survey_design_closed_from_evidence (S : SurveyDesignPackage) (E : SurveyDesignEvidence S) :
    SurveyDesignClosed S := by
  refine And.intro E.designWeightsComputed ?_
  exact E.primarySamplingUnitsPositive

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse