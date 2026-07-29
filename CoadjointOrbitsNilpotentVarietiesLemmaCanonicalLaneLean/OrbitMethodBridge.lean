import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure OrbitMethodPackage (g : LieAlgebra ℂ) where
  polarizations : Set (Subspace ℂ g.carrier)
  irreducibleRepresentations : Set (Representation g)
  orbitMethodCorrespondence : Prop

structure OrbitMethodEvidence (g : LieAlgebra ℂ) (P : OrbitMethodPackage g) where
  correspondenceHolds : P.orbitMethodCorrespondence
  polarizationsAdmissible : ∀ (s : Subspace ℂ g.carrier), s ∈ P.polarizations → (s.isLagrangian : Prop)

def OrbitMethodClosed (g : LieAlgebra ℂ) (P : OrbitMethodPackage g) : Prop :=
  P.orbitMethodCorrespondence ∧ (∀ (s : Subspace ℂ g.carrier), s ∈ P.polarizations → (s.isLagrangian : Prop))

theorem orbit_method_closed_from_evidence (g : LieAlgebra ℂ) (P : OrbitMethodPackage g)
    (E : OrbitMethodEvidence g P) : OrbitMethodClosed g P := by
  exact And.intro E.correspondenceHolds E.polarizationsAdmissible

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
