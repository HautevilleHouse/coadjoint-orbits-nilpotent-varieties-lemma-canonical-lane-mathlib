import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (∀ (ξ : A.object.lieAlgebra), (CoadjointOrbitClosed A.object.orbitPackage))

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  intro ξ
  -- Decompose: orbit closed via admissible class
  apply coadjoint_orbit_closed_from_evidence A.object.orbitPackage A.object.orbitEvidence

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse