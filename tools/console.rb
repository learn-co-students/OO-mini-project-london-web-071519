require_relative '../config/environment.rb'

u1 = User.new("Rod")
u2 = User.new("Mary")
u3 = User.new("Elliot")
u4 = User.new("Nick")
u5 = User.new("Adnan")
u6 = User.new("Felipe")
u7 = User.new("Sohaib")

r1 = Recipe.new("Pancakes")
r2 = Recipe.new("Waffle w/Bacon")
r3 = Recipe.new("Cheesecake")
r4 = Recipe.new("Crepe")
r5 = Recipe.new("Cupcake")
r6 = Recipe.new("Brownie")
r7 = Recipe.new("Baclava")
r8 = Recipe.new("Chocolate Cake")
r9 = Recipe.new("Victoria Sponge")
r10 = Recipe.new("Muffin")
r11 = Recipe.new("Croissant")
r12 = Recipe.new("Blueberry Scone")

i1 = Ingredient.new("Flour")
i2 = Ingredient.new("Blueberries")
i3 = Ingredient.new("Butter")
i4 = Ingredient.new("Jam")
i5 = Ingredient.new("Wheat")
i6 = Ingredient.new("Almonds")
i7 = Ingredient.new("Milk")
i8 = Ingredient.new("Peanuts")

a1 = Allergy.new(u1, i1)
a2 = Allergy.new(u3, i1)
a3 = Allergy.new(u2, i1)
a4 = Allergy.new(u1, i1)
a5 = Allergy.new(u2, i5)
a6 = Allergy.new(u3, i6)
a7 = Allergy.new(u1, i7)

rc1 = RecipeCard.new(u1, r1, "11/08/2018", 4)
rc2 = RecipeCard.new(u2, r2, "17/08/2018", 5)
rc3 = RecipeCard.new(u3, r3, "12/08/2018", 2)
rc4 = RecipeCard.new(u4, r6, "08/08/2018", 4)
rc5 = RecipeCard.new(u5, r5, "18/08/2018", 3)
rc6 = RecipeCard.new(u6, r6, "21/08/2018", 5)
rc7 = RecipeCard.new(u6, r7, "30/08/2018", 1)
rc8 = RecipeCard.new(u6, r8, "30/08/2018", 5)
rc9 = RecipeCard.new(u6, r6, "07/03/2018", 3)
rc10 = RecipeCard.new(u6, r10, "05/08/2018", 4)
rc11 = RecipeCard.new(u6, r11, "15/08/2018", 2)
rc12 = RecipeCard.new(u6, r12, "06/10/2018", 4)

ri1 = RecipeIngredient.new(r1, i1)
ri2 = RecipeIngredient.new(r2, i3)
ri3 = RecipeIngredient.new(r4, i2)
ri4 = RecipeIngredient.new(r4, i3)
ri5 = RecipeIngredient.new(r5, i5)
ri6 = RecipeIngredient.new(r5, i4)
ri7 = RecipeIngredient.new(r5, i2)

u1.add_recipe_card(r1, "11/09/2019", 5)


# u6.top_three_recipes
Recipe.most_popular
binding.pry
0
