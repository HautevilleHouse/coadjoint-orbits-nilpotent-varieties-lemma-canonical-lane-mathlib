import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure NilpotentOrbitClosurePackage where
  lieAlgebra : Type u
  nilpotentOrbit : Type v
  zariskiClosure : Set lieAlgebra
  orbitIsDense : Prop
  closureIsIrreducible : Prop
  orbitIsDenseTerm : orbitIsDense
  closureIsIrreducibleTerm : closureIsIrreducible

structure NilpotentOrbitClosureEvidence (N : NilpotentOrbitClosurePackage) where
  orbitIsDenseClosed : N.orbitIsDense
  closureIsIrreducibleClosed : N.closureIsIrreducible

def NilpotentOrbitClosureClosed (N : NilpotentOrbitClosurePackage) : Prop :=
  N.orbitIsDense ∧ N.closureIsIrreducible

theorem nilpotent_orbit_closure_closed_from_evidence
    (N : NilpotentOrbitClosurePackage)
    (E : NilpotentOrbitClosureEvidence N) : NilpotentOrbitClosureClosed N := by
  exact And.intro E.orbitIsDenseClosed E.closureIsIrreducibleClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse