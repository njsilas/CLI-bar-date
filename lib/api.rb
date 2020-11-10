require 'pry'
require_relative "../environment.rb"
class Api
    attr_accessor :query
    def initialize(query)
        @query = query
   
    end
    def fetch_drink
        url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{@query}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        drinks = JSON.parse(response)
    end
end
api = Api.new("last word")
binding.pry