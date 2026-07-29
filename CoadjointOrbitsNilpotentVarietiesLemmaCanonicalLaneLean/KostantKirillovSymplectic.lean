import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure KostantKirillovForm (g : LieAlgebra ℂ) where
  orbit : CoadjointOrbit g
  symplecticForm : TwoForm (orbit.orbit)
  nondegenerate : Prop
  closed : Prop

structure KostantKirillovEvidence (g : LieAlgebra ℂ) (K : KostantKirillovForm g) where
  nondegenerateClosed : K.nondegenerate
  closedClosed : K.closed

def KostantKirillovClosed (g : LieAlgebra ℂ) (K : KostantKirillovForm g) : Prop :=
  K.nondegenerate ∧ K.closed

theorem kostant_kirillov_closed_from_evidence (g : LieAlgebra ℂ) (K : KostantKirillovForm g)
    (E : KostantKirillovEvidence g K) : KostantKirillovClosed g K := by
  exact And.intro E.nondegenerateClosed E.closedClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse
