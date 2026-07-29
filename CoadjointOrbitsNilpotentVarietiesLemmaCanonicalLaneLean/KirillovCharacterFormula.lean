import canonicalLaneMathlib.AdmissibleClass
import CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean.CoadjointOrbit

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure KirillovCharacterFormula (G : Type u) [Group G] (𝔤 : Type v) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] where
  orbit : CoadjointOrbit G 𝔤
  characterFormula : G → ℂ
  equivariance : Prop
  unitary : Prop
  equivarianceClosed : equivariance
  unitaryClosed : unitary

structure KirillovCharacterFormulaEvidence (K : KirillovCharacterFormula G 𝔤) where
  equivarianceClosed : K.equivariance
  unitaryClosed : K.unitary

def KirillovCharacterFormulaClosed (K : KirillovCharacterFormula G 𝔤) : Prop :=
  K.equivariance ∧ K.unitary

theorem kirillov_character_formula_closed_from_evidence (K : KirillovCharacterFormula G 𝔤) (E : KirillovCharacterFormulaEvidence K) :
    KirillovCharacterFormulaClosed K := by
  exact And.intro E.equivarianceClosed E.unitaryClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
