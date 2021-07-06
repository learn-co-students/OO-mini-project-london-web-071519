require_relative '../config/environment.rb'

recipe1 = Recipe.new("Chocolate Cake")
recipe2 = Recipe.new("Orange Moose")
recipe3 = Recipe.new("Duck Confit")
recipe4 = Recipe.new("Cottage Pie")

user1 = User.new("Nick")
user2 = User.new("Rod")
user3 = User.new("Harry")
user4 = User.new("Bob")

ingredient1 = Ingredient.new("Chocolate")
ingredient2 = Ingredient.new("Orange")
ingredient3 = Ingredient.new("Flour")
ingredient4 = Ingredient.new("Sugar")
ingredient5 = Ingredient.new("Butter")


rec_card1 = RecipeCard.new(user1, recipe2, "02/04/2008", 4.5)
rec_card2 = RecipeCard.new(user2, recipe2, "12/01/2018", 2.3)
rec_card3 = RecipeCard.new(user3, recipe3, "27/11/2011", 3.7)
rec_card4 = RecipeCard.new(user1, recipe3, "09/07/2019", 5.0)
rec_card5 = RecipeCard.new(user1, recipe2, "09/07/2019", 1.2)
rec_card6 = RecipeCard.new(user1, recipe2, "09/07/2019", 3.2)
rec_card7 = RecipeCard.new(user1, recipe4, "09/07/2019", 0.7)

res_ing1 = RecipeIngredient.new(recipe1, ingredient2)
res_ing2 = RecipeIngredient.new(recipe2, ingredient4)
res_ing3 = RecipeIngredient.new(recipe2, ingredient2)
res_ing4 = RecipeIngredient.new(recipe3, ingredient1)
res_ing5 = RecipeIngredient.new(recipe3, ingredient4)
res_ing6 = RecipeIngredient.new(recipe3, ingredient5)

allergy1 = Allergy.new(user1, ingredient1)
allergy2 = Allergy.new(user3, ingredient2)
allergy3 = Allergy.new(user2, ingredient3)
allergy3 = Allergy.new(user4, ingredient3)

binding.pry
