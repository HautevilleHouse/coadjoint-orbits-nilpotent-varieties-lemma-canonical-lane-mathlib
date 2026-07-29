import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure JacobsonMorozovPackage where
  nilpotentElement : Type u
  sl2Triple : Type v
  tripleExists : Prop
  tripleUniqueUpToConjugation : Prop
  tripleExistsTerm : tripleExists
  tripleUniqueUpToConjugationTerm : tripleUniqueUpToConjugation

structure JacobsonMorozovEvidence (J : JacobsonMorozovPackage) where
  tripleExistsClosed : J.tripleExists
  tripleUniqueUpToConjugationClosed : J.tripleUniqueUpToConjugation

def JacobsonMorozovClosed (J : JacobsonMorozovPackage) : Prop :=
  J.tripleExists ∧ J.tripleUniqueUpToConjugation

theorem jacobson_morozov_closed_from_evidence (J : JacobsonMorozovPackage)
    (E : JacobsonMorozovEvidence J) : JacobsonMorozovClosed J := by
  exact And.intro E.tripleExistsClosed E.tripleUniqueUpToConjugationClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse