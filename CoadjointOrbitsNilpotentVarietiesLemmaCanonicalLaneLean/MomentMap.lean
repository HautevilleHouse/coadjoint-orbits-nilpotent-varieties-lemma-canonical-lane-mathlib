import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure MomentMap (G : Type u) [LieGroup G] (M : Type v) [SmoothManifold M] where
  symplecticForm : M → M → ℝ
  momentMap : M → CoadjointOrbitBundle G
  gEquivariance : ∀ (g : G) (x : M), momentMap (g • x) = (CoadjointOrbitBundle.coadjointAction g) (momentMap x)
  hamiltonianVectorFields : Prop

structure MomentMapEvidence (G : Type u) [LieGroup G] (M : Type v) [SmoothManifold M] (μ : MomentMap G M) where
  gEquivarianceClosed : μ.gEquivariance
  hamiltonianVectorFieldsClosed : μ.hamiltonianVectorFields

def MomentMapClosed (G : Type u) [LieGroup G] (M : Type v) [SmoothManifold M] (μ : MomentMap G M) : Prop :=
  μ.gEquivariance ∧ μ.hamiltonianVectorFields

theorem moment_map_closed_from_evidence (G : Type u) [LieGroup G] (M : Type v) [SmoothManifold M] (μ : MomentMap G M) (E : MomentMapEvidence G M μ) : MomentMapClosed G M μ := by
  exact And.intro E.gEquivarianceClosed E.hamiltonianVectorFieldsClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse