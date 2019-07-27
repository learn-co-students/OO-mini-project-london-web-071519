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

    def add_recipe_card(recipe,date,rating)
        RecipeCard.new(self,recipe,date,rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self,ingredient)
    end
    
    def allergens
        Allergy.all.select{|allergy| allergy.user == self}
    end

    def recipecards
        RecipeCard.all.select{|rc| rc.user == self}
    end

    def my_recipes
        recipecards.map{|rc| rc.recipe}
    end

    def top_three_recipecards
        recipecards.sort_by{|rc| -rc.rating}[0 ... 3]
    end

    def top_three_recipes
        top_three_recipecards.map{|rc| rc.recipe}
    end

end