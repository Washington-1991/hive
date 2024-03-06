require 'uri'
require 'net/http'

# create workout

workout = Workout.create(name: "name", photo: "workout.jpg", description: "description")



url = URI("https://exercisedb.p.rapidapi.com/exercises/bodyPart/back?limit=10")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = ENV["API_SPORT"]
request["X-RapidAPI-Host"] = 'exercisedb.p.rapidapi.com'

response = http.request(request)
puts response.read_body
require 'json'


response = http.request(request)
body = response.read_body
data = JSON.parse(body)

data.each do |hash_exercise|
  Exercice.create(name: hash_exercise["name"], workout: workout, photo: hash_exercise["workout.jpg"], time: hash_exercise["time"], repetition: hash_exercise["repetition"], calories: hash_exercise["calories"], type: hash_exercise["type"],)
end
