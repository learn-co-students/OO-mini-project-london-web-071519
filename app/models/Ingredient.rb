class Ingredient
    attr_reader

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end
    
    def self.all
        @@all
    end

    def allergies
        Allergy.all.select{|aller| aller.ingredient == self}
    end


end
