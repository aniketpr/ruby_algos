# RUby dig method used to parse the hash and yaml data

user = {
    name: "John",
    favorites: {
        food: "Pizza",
        movies: "Fiddler on the roof",
        something_else: nil 
    }
}

# Traditional Method
puts user[:name]
puts user[:favorites][:food]

puts user.dig(:name)
puts user.dig(:favorites, :movies)
puts user.dig(:favorites, :something_else) # we should take care while calliong  key which is not present bcz its return nil 
puts user.dig(:favorites, :something_elses)

require 'yaml'

config = YAML.load_file('config.yml')

puts config.inspect

puts config.dig('secret_key')
puts config.dig('production', 'aws_key')
