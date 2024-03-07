require 'uri'
require 'net/http'

# Create workout
workout = Workout.create(name: "name", photo: "workout.jpg", description: "description")

url = URI("https://exercisedb.p.rapidapi.com/exercises/bodyPart/back?limit=10")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = ENV["API_SPORT"]
request["X-RapidAPI-Host"] = 'exercisedb.p.rapidapi.com'

response = http.request(request)

require 'json'

body = response.read_body
data = JSON.parse(body)

data.each do |hash_exercise|
  # Create Exercice instances with the correct association+
  p hash_exercise.keys
  Exercice.create(
    name: hash_exercise["name"],
    workout_id: workout.id, # Use workout_id instead of workout
    photo: hash_exercise["workout.jpg"],
    repetition: hash_exercise["repetition"],
  )
end
