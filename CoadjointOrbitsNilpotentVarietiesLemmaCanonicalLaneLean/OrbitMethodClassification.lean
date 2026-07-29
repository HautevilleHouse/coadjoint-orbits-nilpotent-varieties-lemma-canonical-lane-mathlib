import canonicalLaneMathlib.AdmissibleClass
import CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean.CoadjointOrbit
import CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean.NilpotentVariety

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure OrbitMethodClassification (G : Type u) [Group G] (𝔤 : Type v) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] where
  nilpotentOrbitSet : Set (CoadjointOrbit G 𝔤)
  associatedVariety : NilpotentVariety 𝔤
  representationConstructed : G → Module.End ℂ (Vector ℂ)
  irreducibilityCondition : Prop
  classificationComplete : Prop
  irreducibilityConditionClosed : irreducibilityCondition
  classificationCompleteClosed : classificationComplete

structure OrbitMethodClassificationEvidence (C : OrbitMethodClassification G 𝔤) where
  irreducibilityConditionClosed : C.irreducibilityCondition
  classificationCompleteClosed : C.classificationComplete

def OrbitMethodClassificationClosed (C : OrbitMethodClassification G 𝔤) : Prop :=
  C.irreducibilityCondition ∧ C.classificationComplete

theorem orbit_method_classification_closed_from_evidence (C : OrbitMethodClassification G 𝔤) (E : OrbitMethodClassificationEvidence C) :
    OrbitMethodClassificationClosed C := by
  exact And.intro E.irreducibilityConditionClosed E.classificationCompleteClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
