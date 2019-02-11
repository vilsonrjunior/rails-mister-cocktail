# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

# json = ActiveSupport::JSON.decode(File.read('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'))

# json.each do |a|
#   Json.create!(a['ingredient'])
# end

# require 'open-uri'
# require 'json'
# # require 'pry-byebug'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
fetch_url = open(url).read
parsed_url = JSON.parse(fetch_url)

results = parsed_url['drinks']

results.each do |i|
  Ingredient.create(name: i['strIngredient1'])
end
