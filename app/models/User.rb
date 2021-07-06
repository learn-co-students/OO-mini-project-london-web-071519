class User 

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
        RecipeCard.all.select {|recipe_card| recipe_card.user == self}
    end

    def recipes
        recipe_cards.map {|recipe_card| recipe_card.recipe}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select {|allergy| allergy.user == self}
    end

    def top_three_recipes
        recipe_cards.sort_by {|recipe_card| recipe_card.rating}.reverse.slice(0,3)
    end

    def most_recent_recipe
        recipes.last
    end





end
