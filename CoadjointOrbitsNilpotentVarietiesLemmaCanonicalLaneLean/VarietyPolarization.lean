import canonicalLaneMathlib.AdmissibleClass
import CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean.NilpotentVarieties

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure PolarizationPackage {N : NilpotentVarietyPackage} where
  polarization : Type u
  subalgebra : Type v
  isotropyCondition : Prop
  lagrangianCondition : Prop
  isotropyClosed : isotropyCondition
  lagrangianClosed : lagrangianCondition

structure PolarizationEvidence {N : NilpotentVarietyPackage}
    (P : PolarizationPackage N) where
  isotropyClosed : P.isotropyCondition
  lagrangianClosed : P.lagrangianCondition

def PolarizationClosed {N : NilpotentVarietyPackage}
    (P : PolarizationPackage N) : Prop :=
  P.isotropyCondition ∧ P.lagrangianCondition

theorem polarization_closed_from_evidence {N : NilpotentVarietyPackage}
    (P : PolarizationPackage N) (E : PolarizationEvidence P) :
    PolarizationClosed P := by
  exact And.intro E.isotropyClosed E.lagrangianClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
