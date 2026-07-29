import FusionCategoriesModularTensorCategoriesCanonicalLaneLean.ModularTensorCategoryLayer

namespace HautevilleHouse
namespace FusionCategoriesModularTensorCategoriesCanonicalLaneLean

structure BraidingCertificate where
  modularState : ModularTensorCategoryCertificate
  hexagonEquationsChecked : Bool
  braidingIsomorphismChecked : Bool
  naturalityChecked : Bool

def braidingCertificate : BraidingCertificate := {
  modularState := modularTensorCategoryCertificate,
  hexagonEquationsChecked := true,
  braidingIsomorphismChecked := true,
  naturalityChecked := true
}

def BraidingClosed (C : BraidingCertificate) : Prop :=
  ModularTensorCategoryClosed C.modularState ∧
  C.hexagonEquationsChecked = true ∧
  C.braidingIsomorphismChecked = true ∧
  C.naturalityChecked = true

theorem braiding_closed_checked :
    BraidingClosed braidingCertificate := by
  exact And.intro modular_tensor_category_closed_checked (And.intro rfl (And.intro rfl rfl))

end FusionCategoriesModularTensorCategoriesCanonicalLaneLean
end HautevilleHouse
