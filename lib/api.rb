require 'pry'
require "httparty"
require_relative "operator.rb"
class Api
    attr_accessor :query
    

    def initialize(query)
        @query = query
    end
    def fetch_drink
        url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{query}"
       
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        hash["drinks"]
        collection_of_booze = hash["drinks"]
        #collection_of_booze.find(1) do |single_one|
        
            #Operator.new(drink["strDrink"], drink["strIngredient1"], drink["strIngredient2"])
        
        #end
        
        
    end
    def cleaned_up_version
        counter = 1
        self.fetch_drink.each do |drink|
                
               if counter == 1  
               nu_drink = Operator.new(drink["strDrink"], drink["strIngredient1"], drink["strIngredient2"])
               puts nu_drink
                counter += 1
           binding.pry
            end
        end
    end
end



 
 
  
  