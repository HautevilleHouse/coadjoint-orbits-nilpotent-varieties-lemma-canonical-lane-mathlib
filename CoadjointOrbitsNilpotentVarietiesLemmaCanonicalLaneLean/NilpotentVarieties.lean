import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure NilpotentVarietyPackage where
  variety : Type u
  topology : TopologicalSpace variety
  poissonStructure : Type v
  nilpotentCondition : Prop
  poissonStructureClosed : poissonStructure

structure NilpotentVarietyEvidence (N : NilpotentVarietyPackage) where
  nilpotentConditionClosed : N.nilpotentCondition
  poissonStructureClosed : N.poissonStructureClosed

def NilpotentVarietyClosed (N : NilpotentVarietyPackage) : Prop :=
  N.nilpotentCondition ∧ N.poissonStructureClosed

theorem nilpotent_variety_closed_from_evidence (N : NilpotentVarietyPackage)
    (E : NilpotentVarietyEvidence N) : NilpotentVarietyClosed N := by
  exact And.intro E.nilpotentConditionClosed E.poissonStructureClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
