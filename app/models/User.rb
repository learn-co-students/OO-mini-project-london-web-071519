class User

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def my_recipes
        RecipeCard.all.select {|repcard| repcard.user == self}
    end

    def recipes
        my_recipes.map {|rec_card| rec_card.recipe}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(ingredient, self)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def safe_recipes
        recipes.each do |recep|
            allergens.each do |allerg|
            recep.ingredient
            end
        end
    end
    
    def allergens
        Allergy.all.select {|allergen| allergen.user == self}
    end

    def most_recent_recipe
        my_recipes.last
    end

    def top_three_recipes
        my_recipes.sort_by{|recipe| recipe.rating}.reverse.slice(0..2)
    end
end