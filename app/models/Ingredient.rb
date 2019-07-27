class Ingredient 

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def allergies
        Allergies.all.select do |allergy|
            allergy.ingredient == self
        end
    end

    def self.allergy_ingredients
        Allergy.all.map do |allergy|
            allergy.ingredient
        end
    end

    def self.most_common_allergen
        max_ingredient = nil
        counter = 0
        self.all.each do |my_ingredient|
            if allergy_ingredients.count(my_ingredient) > counter
                counter = allergy_ingredients.count(my_ingredient)
                max_ingredient = my_ingredient
            end
        end
        max_ingredient
    end

end
