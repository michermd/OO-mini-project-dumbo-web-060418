require_relative '../config/environment.rb'

chic = Recipe.new("Steamed Chicken")
beef = Recipe.new("Beef stew")


charlie = User.new("Charlie")
mich = User.new("Mich")
arren = User.new("Arren")

ing1 = Ingredient.new("Chicken")
ing2 = Ingredient.new("Beef")
ing3 = Ingredient.new("Fish")
ing4 = Ingredient.new("Nuts")

ri1 = RecipeIngredient.new(chic, ing1)
ri2 = RecipeIngredient.new(beef, ing2)

aler1 = Allergen.new(charlie, ing1)
aler2 = Allergen.new(charlie, ing3)
aler3 = Allergen.new(mich, ing2)
aler4 = Allergen.new(mich, ing1)

rc1 = RecipeCard.new(chic, mich, "06/14/18", 10)
rc2 = RecipeCard.new(beef, charlie, "12/25/18", 1)
rc3 = RecipeCard.new(chic, arren, "00/00/00", 9)

binding.pry
