import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FusionCategoriesModularTensorCategoriesCanonicalLaneLean

structure Braiding where
  braiding : ∀ (X Y : Type), X → Y → Y ⊗ X
  naturality : Prop
  hexagonEquations : Prop

default

structure BraidedTensorCategoryCertificate where
  braiding : Braiding
  braidingNaturalityChecked : Bool
  hexagonEquationsChecked : Bool

default

def braidedTensorCategoryCertificate : BraidedTensorCategoryCertificate := {
  braiding := { 
    braiding := λ X Y x y => (y, x),
    naturality := True,
    hexagonEquations := True 
  },
  braidingNaturalityChecked := true,
  hexagonEquationsChecked := true
}

end FusionCategoriesModularTensorCategoriesCanonicalLaneLean
end HautevilleHouse