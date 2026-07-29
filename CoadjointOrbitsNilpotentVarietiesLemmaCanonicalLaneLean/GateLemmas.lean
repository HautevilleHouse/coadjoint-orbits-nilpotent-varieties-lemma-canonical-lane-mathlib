import canonicalLaneMathlib.AdmissibleClass
import CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop := 
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
