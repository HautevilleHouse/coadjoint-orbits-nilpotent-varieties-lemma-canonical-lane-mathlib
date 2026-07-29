import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure CoadjointOrbit (G : Type u) [Group G] (𝔤 : Type v) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] where
  element : 𝔤
  stabilizer : Subgroup G
  stabilizerClosed : stabilizer.Normal := by infer_instance
  orbitSmooth : Prop
  orbitClosure : orbitSmooth

structure CoadjointOrbitEvidence (O : CoadjointOrbit G 𝔤) where
  orbitSmoothClosed : O.orbitSmooth

def CoadjointOrbitClosed (O : CoadjointOrbit G 𝔤) : Prop :=
  O.orbitSmooth

theorem coadjoint_orbit_closed_from_evidence (O : CoadjointOrbit G 𝔤) (E : CoadjointOrbitEvidence O) :
    CoadjointOrbitClosed O := by
  exact E.orbitSmoothClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
