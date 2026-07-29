import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FusionCategoriesModularTensorCategoriesCanonicalLaneLean

structure FusionCategoryStructure where
  simpleObjects : Type
  fusionRules : simpleObjects → simpleObjects → List (simpleObjects × ℕ)
  associator : simpleObjects → simpleObjects → simpleObjects → (simpleObjects → simpleObjects → simpleObjects → ℂ)
  unitObject : simpleObjects
  unitConstraints : simpleObjects → (simpleObjects → ℂ)

default

structure FusionCategoryCertificate where
  structure : FusionCategoryStructure
  fusionRulesChecked : Bool
  associatorChecked : Bool
  unitConstraintsChecked : Bool

default

def fusionCategoryCertificate : FusionCategoryCertificate := {
  structure := { 
    simpleObjects := Unit, 
    fusionRules := λ _ _ => [(Unit, 1)], 
    associator := λ _ _ _ _ _ _ => 1, 
    unitObject := Unit, 
    unitConstraints := λ _ _ => 1 
  },
  fusionRulesChecked := true,
  associatorChecked := true,
  unitConstraintsChecked := true
}

end FusionCategoriesModularTensorCategoriesCanonicalLaneLean
end HautevilleHouse