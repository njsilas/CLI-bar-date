 
class Operator
    attr_accessor  :drink, :ingredient, :additional_ingredient, :instructions
    @@all = []
    def initialize(drink, ingredient, additional_ingredient, instructions)
        @drink = drink
        @ingredient = ingredient
        @additional_ingredient = additional_ingredient
        @instructions = instructions
        @@all << self
    end
    def self.all
        @@all

    end
end