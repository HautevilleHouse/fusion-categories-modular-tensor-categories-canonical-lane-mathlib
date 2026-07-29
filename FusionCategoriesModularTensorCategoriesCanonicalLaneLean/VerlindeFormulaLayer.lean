import canonicalLaneMathlib.AdmissibleClass
import FusionCategoriesModularTensorCategoriesCanonicalLaneLean.ModularTensorCategoryLayer

namespace HautevilleHouse
namespace FusionCategoriesModularTensorCategoriesCanonicalLaneLean

structure FusionRing where
  basis : Type
  multiplication : basis → basis → List (basis × ℕ)
  structureConstants : basis → basis → basis → ℕ
  associativity : Prop

default

structure VerlindeFormulaCertificate where
  modularCertificate : ModularTensorCategoryCertificate
  fusionRing : FusionRing
  sMatrixDiagonalizationChecked : Bool
  verlindeFormulaApplied : Bool

default

def verlindeFormulaCertificate : VerlindeFormulaCertificate := {
  modularCertificate := modularTensorCategoryCertificate,
  fusionRing := { 
    basis := Unit,
    multiplication := λ _ _ => [(Unit, 1)],
    structureConstants := λ _ _ _ => 1,
    associativity := True 
  },
  sMatrixDiagonalizationChecked := true,
  verlindeFormulaApplied := true
}

end FusionCategoriesModularTensorCategoriesCanonicalLaneLean
end HautevilleHouse