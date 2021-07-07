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

    def self.most_common_allergen
        el = Allergy.all.map{|al| al.name}
        el.max_by{|al| el.count(al)}
    end

end