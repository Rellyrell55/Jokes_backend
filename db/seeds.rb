Joke.destroy_all

require 'rest-client'
require 'json'

base_url = "https://official-joke-api.appspot.com/jokes/ten"
data = RestClient.get(base_url)
parsed_data = JSON.parse(data)



#Joke.create(category: parsed_data["type"], setup: parsed_data["setup"], punchline: parsed_data["punchline"])

parsed_data.map do |joke|
    Joke.create(category: joke["type"], setup: joke["setup"], punchline: joke["punchline"])
end