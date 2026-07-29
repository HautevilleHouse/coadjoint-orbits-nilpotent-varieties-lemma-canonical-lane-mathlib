import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure OrbitMethodQuantizationPackage where
  orbitSpace : Type u
  polarization : Type v
  unitaryRepresentation : Type w
  orbitSpaceSymplectic : Prop
  polarizationAdmissible : Prop
  representationConstructed : Prop
  orbitSpaceSymplecticTerm : orbitSpaceSymplectic
  polarizationAdmissibleTerm : polarizationAdmissible
  representationConstructedTerm : representationConstructed

structure OrbitMethodQuantizationEvidence (Q : OrbitMethodQuantizationPackage) where
  orbitSpaceSymplecticClosed : Q.orbitSpaceSymplectic
  polarizationAdmissibleClosed : Q.polarizationAdmissible
  representationConstructedClosed : Q.representationConstructed

def OrbitMethodQuantizationClosed (Q : OrbitMethodQuantizationPackage) : Prop :=
  Q.orbitSpaceSymplectic ∧ Q.polarizationAdmissible ∧ Q.representationConstructed

theorem orbit_method_quantization_closed_from_evidence
    (Q : OrbitMethodQuantizationPackage)
    (E : OrbitMethodQuantizationEvidence Q) : OrbitMethodQuantizationClosed Q := by
  exact And.intro E.orbitSpaceSymplecticClosed
    (And.intro E.polarizationAdmissibleClosed E.representationConstructedClosed)

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse