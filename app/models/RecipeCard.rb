class RecipeCard
    
# RecipeCard.all should return all of the RecipeCard instances
# RecipeCard#date should return the date of the entry
# RecipeCard#rating should return the rating (an integer) a user has given their entry
# RecipeCard#user should return the user to which the entry belongs
# RecipeCard#recipe should return the recipe to which the entry belongs

    attr_accessor :user, :recipe
    attr_reader :rating, :date
    @@all = []

    def initialize(user, recipe, date, rating)
        @user = user
        @recipe = recipe
        @date = date
        @rating = rating
        @@all << self
    end

    def self.all
        @@all 
    end

end