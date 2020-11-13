
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
        
        if hash.value?(nil)
            Cli.sorry
        else
            drink = hash["drinks"][0]
            Operator.new(drink["strDrink"], drink["strIngredient1"], drink["strIngredient2"], drink["strInstructions"])
        end
        #def self.the_drink
        #drink = self.fetch_drink[0]
       #clean_drink = Operator.new(drink["strDrink"], drink["strIngredient1"], drink["strIngredient2"], drink["strInstructions"])
                
                
         
            
            
        #end
    end
end



 
 
  
  