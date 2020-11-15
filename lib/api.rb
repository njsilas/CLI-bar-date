# frozen_string_literal: true

class Api
  attr_accessor :query

  def initialize(query = nil)
    @query = query
  end

  def fetch_drink
    url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{query}"

    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    hash['drinks']

    if hash.value?(nil)
      nil
    else
      drink = hash['drinks'][0]
      Operator.new(drink['strDrink'], drink['strIngredient1'], drink['strIngredient2'], drink['strInstructions'])
    end
  end

  def dealers_choice
    url = 'https://www.thecocktaildb.com/api/json/v1/1/random.php'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    hash['drinks']
    drink = hash['drinks'][0]
    Operator.new(drink['strDrink'], drink['strIngredient1'], drink['strIngredient2'], drink['strInstructions'])
  end
end
