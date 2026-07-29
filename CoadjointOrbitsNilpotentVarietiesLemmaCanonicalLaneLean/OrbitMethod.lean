import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure OrbitMethod (G : Type u) [LieGroup G] (M : Type v) [SmoothManifold M] where
  μ : MomentMap G M
  stabilizerSubgroups : G → Set (Subgroup G)
  reducedPhaseSpaces : Prop
  orbitReduction : Prop
  symplecticQuotient : Prop

structure OrbitMethodEvidence (G : Type u) [LieGroup G] (M : Type v) [SmoothManifold M] (O : OrbitMethod G M) where
  reducedPhaseSpacesClosed : O.reducedPhaseSpaces
  orbitReductionClosed : O.orbitReduction
  symplecticQuotientClosed : O.symplecticQuotient

def OrbitMethodClosed (G : Type u) [LieGroup G] (M : Type v) [SmoothManifold M] (O : OrbitMethod G M) : Prop :=
  O.reducedPhaseSpaces ∧ O.orbitReduction ∧ O.symplecticQuotient

theorem orbit_method_closed_from_evidence (G : Type u) [LieGroup G] (M : Type v) [SmoothManifold M] (O : OrbitMethod G M) (E : OrbitMethodEvidence G M O) : OrbitMethodClosed G M O := by
  exact And.intro E.reducedPhaseSpacesClosed (And.intro E.orbitReductionClosed E.symplecticQuotientClosed)

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse