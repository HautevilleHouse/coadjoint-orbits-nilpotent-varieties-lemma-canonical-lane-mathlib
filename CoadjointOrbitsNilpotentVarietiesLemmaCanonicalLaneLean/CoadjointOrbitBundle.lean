import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure CoadjointOrbitBundle (G : Type u) [LieGroup G] where
  lieAlgebra : Type v
  dualSpace : Type w
  coadjointAction : G → dualSpace → dualSpace
  orbit : G → dualSpace → Set dualSpace
  orbitSmooth : ∀ (g : G) (ξ : dualSpace), Smooth (fun (h : G) => coadjointAction h ξ) g

structure CoadjointOrbitBundleEvidence (G : Type u) [LieGroup G] (B : CoadjointOrbitBundle G) where
  orbitSmoothClosed : B.orbitSmooth

def CoadjointOrbitBundleClosed (G : Type u) [LieGroup G] (B : CoadjointOrbitBundle G) : Prop :=
  B.orbitSmooth

theorem coadjoint_orbit_bundle_closed_from_evidence (G : Type u) [LieGroup G] (B : CoadjointOrbitBundle G) (E : CoadjointOrbitBundleEvidence G B) : CoadjointOrbitBundleClosed G B := by
  exact E.orbitSmoothClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse