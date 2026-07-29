import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusteringSocialBehavioralSciences91c99CanonicalLaneLean

structure BehavioralDistanceKernel where
  behavioralSpace : Type u
  kernelFunction : behavioralSpace → behavioralSpace → ℝ
  symmetric : Prop
  positiveDefinite : Prop
  boundedness : Prop

structure BehavioralDistanceKernelEvidence (K : BehavioralDistanceKernel) where
  symmetricClosed : K.symmetric
  positiveDefiniteClosed : K.positiveDefinite
  boundednessClosed : K.boundedness

def BehavioralDistanceKernelClosed (K : BehavioralDistanceKernel) : Prop :=
  K.symmetric ∧ K.positiveDefinite ∧ K.boundedness

theorem behavioral_distance_kernel_closed_from_evidence (K : BehavioralDistanceKernel) (E : BehavioralDistanceKernelEvidence K) :
    BehavioralDistanceKernelClosed K := by
  exact And.intro E.symmetricClosed (And.intro E.positiveDefiniteClosed E.boundednessClosed)

end ClusteringSocialBehavioralSciences91c99CanonicalLaneLean
end HautevilleHouse