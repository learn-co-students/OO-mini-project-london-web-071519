require_relative '../config/environment.rb'

# Seed Data
##Users
u1 = User.new("Nick Charlet")
u2 = User.new("Harry Chopra")
u3 = User.new("Sohaib Mubashir")

##Recipes
r1 = Recipe.new("Chocolate Cake")
r2 = Recipe.new("Orange Moose")
r3 = Recipe.new("Tofu Pasta")
r4 = Recipe.new("Green Pea Soup")

##RecipeCards
u1.add_recipe_card(r1,"25-07-2019",5)
u2.add_recipe_card(r2,"20-06-2019",4)
u3.add_recipe_card(r3,"15-05-2019",3)
u1.add_recipe_card(r4,"25-04-2019",4)
u2.add_recipe_card(r1,"25-06-2019",4)
u1.add_recipe_card(r2,"25-04-2019",3)
u1.add_recipe_card(r3,"25-04-2019",2)

##Ingredients
i1 = Ingredient.new("Peanuts")
i2 = Ingredient.new("Lactose")
i3 = Ingredient.new("Wheat")
i4 = Ingredient.new("Soy")

##Allergies
u1.declare_allergy(i1)
u2.declare_allergy(i1)
u3.declare_allergy(i2)

##RecipeIngredients
r1.add_ingredients([i3])
r3.add_ingredients([i4])
r4.add_ingredients([i2,i4])

binding.pry
