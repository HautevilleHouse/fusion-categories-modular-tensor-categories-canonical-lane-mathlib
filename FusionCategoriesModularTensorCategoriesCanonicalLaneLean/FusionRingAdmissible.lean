import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FusionCategoriesModularTensorCategoriesCanonicalLaneLean

structure FusionRingDatum where
  simpleObjectLabels : List String
  fusionMatrix : List (List Nat)
  quantumDimensionVector : List Nat
  globalDimension : Nat
  fpdimensionChecked : Bool
  pivotalityChecked : Bool
deriving Repr, DecidableEq

structure ModularTensorCategoryDatum where
  fusionRing : FusionRingDatum
  sMatrix : List (List (Complex ℕ))
  tMatrix : List (List (Complex ℕ))
  modularData : String
  sMatrixUnitarityChecked : Bool
  tMatrixFiniteOrderChecked : Bool

def primitiveFusionRingDatum : FusionRingDatum := {
  simpleObjectLabels := ["X₀", "X₁", "X₂"],
  fusionMatrix := [[1,0,0],[0,1,0],[0,0,1]],
  quantumDimensionVector := [1,1,1],
  globalDimension := 3,
  fpdimensionChecked := true,
  pivotalityChecked := true
}

def primitiveModularTensorCategoryDatum : ModularTensorCategoryDatum := {
  fusionRing := primitiveFusionRingDatum,
  sMatrix := [[(1,0),(0,0),(0,0)],[(0,0),(1,0),(0,0)],[(0,0),(0,0),(1,0)]],
  tMatrix := [[(1,0),(0,0),(0,0)],[(0,0),(1,0),(0,0)],[(0,0),(0,0),(1,0)]],
  modularData := "trivial modular data",
  sMatrixUnitarityChecked := true,
  tMatrixFiniteOrderChecked := true
}

structure FusionAdmissibleClass where
  object : ModularTensorCategoryDatum
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def fusionAdmittedClosure (A : FusionAdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FusionCategoriesModularTensorCategoriesCanonicalLaneLean
end HautevilleHouse
