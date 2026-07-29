import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure CoadjointOrbitPackage where
  lieAlgebra : Type u
  groupG : Type v
  coadjointAction : groupG → lieAlgebra → lieAlgebra
  orbit (ξ : lieAlgebra) : Set lieAlgebra :=
    { η : lieAlgebra | ∃ g : groupG, coadjointAction g ξ = η }
  orbitClosure (ξ : lieAlgebra) : Set lieAlgebra := Set.closure (orbit ξ) 
  orbitStructureStratified : Prop
  orbitClosureStratified : Prop
  orbitStructureIrreducible : Prop

structure CoadjointOrbitEvidence (P : CoadjointOrbitPackage) where
  orbitStructureStratifiedClosed : P.orbitStructureStratified
  orbitClosureStratifiedClosed : P.orbitClosureStratified
  orbitStructureIrreducibleClosed : P.orbitStructureIrreducible

def CoadjointOrbitClosed (P : CoadjointOrbitPackage) : Prop :=
  P.orbitStructureStratified ∧ P.orbitClosureStratified ∧ P.orbitStructureIrreducible

theorem coadjoint_orbit_closed_from_evidence (P : CoadjointOrbitPackage)
    (E : CoadjointOrbitEvidence P) : CoadjointOrbitClosed P := by
  exact And.intro E.orbitStructureStratifiedClosed
    (And.intro E.orbitClosureStratifiedClosed E.orbitStructureIrreducibleClosed)

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse