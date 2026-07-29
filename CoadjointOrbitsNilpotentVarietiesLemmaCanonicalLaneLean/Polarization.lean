import canonicalLaneMathlib.AdmissibleClass
import CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean.CoadjointOrbit

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure Polarization (G : Type u) [Group G] (𝔤 : Type v) [LieRing 𝔤] [LieAlgebra ℝ 𝔤] where
  subalgebra : LieSubalgebra ℝ 𝔤
  subordinateTo : CoadjointOrbit G 𝔤
  dimensionCondition : Nat
  irreducibility : Prop
  irreducibilityClosed : irreducibility

structure PolarizationEvidence (P : Polarization G 𝔤) where
  irreducibilityClosed : P.irreducibility

def PolarizationClosed (P : Polarization G 𝔤) : Prop :=
  P.irreducibility

theorem polarization_closed_from_evidence (P : Polarization G 𝔤) (E : PolarizationEvidence P) :
    PolarizationClosed P := by
  exact E.irreducibilityClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
