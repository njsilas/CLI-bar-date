 
class Operator
    attr_accessor  :drink, :ingredient, :additional_ingredient, :query
    @@all = []
    def initialize(drink, ingredient, additional_ingredient)
        @drink = drink
        @ingredient = ingredient
        @additional_ingredient = additional_ingredient
        @@all << self
    end
    def self.all
        @@all

    end
end