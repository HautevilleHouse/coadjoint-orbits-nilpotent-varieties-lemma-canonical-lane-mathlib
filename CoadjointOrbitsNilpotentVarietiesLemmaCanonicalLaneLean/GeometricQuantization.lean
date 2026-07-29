import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean

structure GeometricQuantization (G : Type u) [LieGroup G] where
  prequantumLineBundle : Type v
  connectionCurvature : Type w
  hilbertSpaceRep : Type x
  quantizationCondition : Prop
  irreducibleRepsClassified : Prop

structure GeometricQuantizationEvidence (G : Type u) [LieGroup G] (Q : GeometricQuantization G) where
  quantizationConditionClosed : Q.quantizationCondition
  irreducibleRepsClassifiedClosed : Q.irreducibleRepsClassified

def GeometricQuantizationClosed (G : Type u) [LieGroup G] (Q : GeometricQuantization G) : Prop :=
  Q.quantizationCondition ∧ Q.irreducibleRepsClassified

theorem geometric_quantization_closed_from_evidence (G : Type u) [LieGroup G] (Q : GeometricQuantization G) (E : GeometricQuantizationEvidence G Q) : GeometricQuantizationClosed G Q := by
  exact And.intro E.quantizationConditionClosed E.irreducibleRepsClassifiedClosed

end CoadjointOrbitsNilpotentVarietiesLemmaCanonicalLaneLean
end HautevilleHouse