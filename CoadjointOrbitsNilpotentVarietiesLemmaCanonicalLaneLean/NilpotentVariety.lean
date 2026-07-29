import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure NilpotentVarietyPackage where
  lieAlgebra : Type u
  nilpotentCone : Set lieAlgebra
  nilpotentConeAlgebraic : Prop
  irreducibleComponents : List (Set lieAlgebra)
  componentsClassified : Prop
  nilpotentConeAlgebraicTerm : nilpotentConeAlgebraic
  componentsClassifiedTerm : componentsClassified

structure NilpotentVarietyEvidence (N : NilpotentVarietyPackage) where
  nilpotentConeAlgebraicClosed : N.nilpotentConeAlgebraic
  componentsClassifiedClosed : N.componentsClassified

def NilpotentVarietyClosed (N : NilpotentVarietyPackage) : Prop :=
  N.nilpotentConeAlgebraic ∧ N.componentsClassified

theorem nilpotent_variety_closed_from_evidence (N : NilpotentVarietyPackage)
    (E : NilpotentVarietyEvidence N) : NilpotentVarietyClosed N := by
  exact And.intro E.nilpotentConeAlgebraicClosed E.componentsClassifiedClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse