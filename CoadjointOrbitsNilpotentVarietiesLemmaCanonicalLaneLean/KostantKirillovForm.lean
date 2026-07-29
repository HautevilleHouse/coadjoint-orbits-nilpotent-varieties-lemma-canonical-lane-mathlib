import canonicalLaneMathlib.AdmissibleClass
import CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean.CoadjointOrbitStructure

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure KostantKirillovForm {G : Type u} {𝔤 : Type v} (O : CoadjointOrbitStructure) where
  formDefined : Prop
  closedTwoForm : Prop
  nondegenerateOnOrbit : Prop
  invarianceUnderGroup : Prop
  formDefinedTerm : formDefined
  closedTwoFormTerm : closedTwoForm
  nondegenerateOnOrbitTerm : nondegenerateOnOrbit
  invarianceUnderGroupTerm : invarianceUnderGroup

def KostantKirillovFormClosed {G : Type u} {𝔤 : Type v}
    {O : CoadjointOrbitStructure} (K : KostantKirillovForm O) : Prop :=
  K.formDefined ∧ K.closedTwoForm ∧ K.nondegenerateOnOrbit ∧ K.invarianceUnderGroup

theorem kostant_kirillov_form_closed_from_evidence
    {G : Type u} {𝔤 : Type v} {O : CoadjointOrbitStructure}
    (K : KostantKirillovForm O) : KostantKirillovFormClosed K := by
  exact And.intro K.formDefinedTerm
    (And.intro K.closedTwoFormTerm
      (And.intro K.nondegenerateOnOrbitTerm K.invarianceUnderGroupTerm))

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
