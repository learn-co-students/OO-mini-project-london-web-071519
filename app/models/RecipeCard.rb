class RecipeCard
    attr_reader :user, :recipe, :rating, :date

    @@all = []
    def initialize(user, recipe, date, rating)
        @user = user
        @recipe = recipe
        @date = date
        @rating = rating
        @@all << self
    end

    def self.recipes
        RecipeCard.all.map {|recipe_card| recipe_card.recipe}
    end

    def self.all
        @@all
    end
end