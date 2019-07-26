class Recipe
   
    attr_reader :recipe, :ingredients
    @@all = []

    def initialize(recipe_name)
        @recipe_name = recipe_name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def my_recipecard_instances
        RecipeCard.all.select {|rec| rec.recipe == self}
    end

    def users
        my_recipecard_instances.map {|recipe| recipe.user}
    end
    
    def self.most_popular
        @@all.inject {|acc, rc| 
        acc.my_recipecard_instances.count < rc.my_recipecard_instances.count ?
        acc = rc : acc}
    end

    def recipeingredients
        RecipeIngredient.all.select {|rec| rec.recipe == self}
    end
    
    def add_ingredients(array_of_ingredients)
        array_of_ingredients.each do |ingred|
            RecipeIngredient.new(self, ingred)
        end
    end

    def ingredients
        recipeingredients.map {|r| r.ingredient}
    end

    def allergens
        ingredients.select{|ingredient| ingredient.allergies.length > 0}
    end
end