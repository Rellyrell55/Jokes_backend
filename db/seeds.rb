require 'pry'
require 'rest-client'
require 'json'

base_url = "https://official-joke-api.appspot.com/jokes/random"
data = RestClient.get(base_url)
parsed_data = JSON.parse(data)
binding.pry


parsed_data.map do |joke|
    Joke.create(type: joke["type"], setup: joke["setup"], punchline: joke["punchline"])
end