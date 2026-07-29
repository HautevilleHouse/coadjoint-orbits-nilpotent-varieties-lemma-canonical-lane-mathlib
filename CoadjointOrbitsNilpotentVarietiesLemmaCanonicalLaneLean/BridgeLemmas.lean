import canonicalLaneMathlib.AdmissibleClass
import CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CoadjointNilpotentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
