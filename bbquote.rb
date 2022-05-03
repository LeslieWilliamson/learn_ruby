require 'net/http'
require 'json'

endpoint = "https://type.fit/api/quotes"

uri = URI(endpoint)

content = Net::HTTP.get(uri)
quotes = JSON.parse(content)

(1..5).each do
    index = rand(100)
    puts quotes[index]["text"]
    puts "By: #{quotes[index]["author"]}" if quotes[index]["author"]
    puts
end

