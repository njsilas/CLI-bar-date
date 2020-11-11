require 'pry'

class Api
    attr_accessor :query
    def initialize(query)
        @query = query
    end

    def self.start
     
        
        url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{@query}"
       
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        collection_of_booze = hash["drinks"]
        collection_of_booze.find(1) do |single_one|
       puts single_one
            Operator.new(single_one["strDrink"], single_one["strIngredient1"], single_one["strIngredient2"])
        
        end
        binding.pry
        
    end
    
end

