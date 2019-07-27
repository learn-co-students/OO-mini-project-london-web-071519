class Recipe 
 
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
        el = RecipeCard.all.map{|rc| rc.recipe}
        el.max_by{|rp| el.count(rp)}
    end

    def users
        recipe_cards.map {|recipe_card| recipe_card.user}
    end

    def recipe_ingredients
        RecipeIngredient.all.select {|ri| ri.recipe == self}
    end

    def ingredients
        recipe_ingredients.map {|ri| ri.ingredient}
    end

    def allergens
        Allergy.all.select{|al|
        ingredients.include?(al.ingredient)}
    end

    def add_ingredients(ingredients)
       ingredients.each{|ing| RecipeIngredient.new(self,ing)}
    end

end