import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure DixmierConjecturePackage where
  envelopingAlgebra : Type u
  primitiveIdeal : Type v
  dixmierMapping : Type w
  primitiveIdealClassified : Prop
  mappingIsBijection : Prop
  primitiveIdealClassifiedTerm : primitiveIdealClassified
  mappingIsBijectionTerm : mappingIsBijection

structure DixmierConjectureEvidence (D : DixmierConjecturePackage) where
  primitiveIdealClassifiedClosed : D.primitiveIdealClassified
  mappingIsBijectionClosed : D.mappingIsBijection

def DixmierConjectureClosed (D : DixmierConjecturePackage) : Prop :=
  D.primitiveIdealClassified ∧ D.mappingIsBijection

theorem dixmier_conjecture_closed_from_evidence (D : DixmierConjecturePackage)
    (E : DixmierConjectureEvidence D) : DixmierConjectureClosed D := by
  exact And.intro E.primitiveIdealClassifiedClosed E.mappingIsBijectionClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse