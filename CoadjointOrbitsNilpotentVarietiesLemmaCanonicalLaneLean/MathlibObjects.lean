import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure CoadjointNilpotentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CoadjointNilpotentAdmittedObject where
  space : CoadjointNilpotentSpace
  nilpotentVariety : Prop
  coadjointOrbit : Prop
  orbitModel : Type
  orbitTopology : TopologicalSpace orbitModel
  supportedOnNilpotent : Prop
  conclusion : supportedOnNilpotent

def CoadjointNilpotentWitnessClosed (O : CoadjointNilpotentAdmittedObject) : Prop :=
  O.supportedOnNilpotent

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
