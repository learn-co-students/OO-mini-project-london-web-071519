class Recipe 

# Recipe.all should return all of the recipe instances
# Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
# Recipe#users should return the user instances who have recipe cards with this recipe
# Recipe#ingredients should return all of the ingredients in this recipe
# Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.
# Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def recipe_cards
        RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
    end

    def self.most_popular
        @@all.inject do |acc, rc|
            acc.recipe_cards.count > rc.recipe_cards.count ?
            acc : rc
        end
    end

    def users
        recipe_cards.map {|recipe_card| recipe_card.user}
    end

    def recipe_ingredients
        RecipeIngredient.all.select {|recipe_ingredient| recipe_ingredient.recipe == self}
    end

    def ingredients
        recipe_ingredients.map {|recipe_ingredient| recipe_ingredient.ingredient}
    end

    def allergens
        allergens_hash = []
        Allergy.all.select do |allergy| 
            ingredients.each do |ingredient| 
              if allergy.ingredient ==  ingredient
                allergens_hash << ingredient
              end
            end
        end
        allergens_hash
    end


    # def add_ingredients(ingredients) #takes in an array of ingredient instances
        def  add_ingredients(ingredients)
            ingredients.each do |ingredient|
                if self.ingredients.count(ingredient) == 0
                    RecipeIngredient.new(self, ingredient)
                end
            end
        end

end