require 'uri'
require 'net/http'
require 'json'

puts " create user "


# Create workout
Exercice.destroy_all
Workout.destroy_all
Program.destroy_all
User.destroy_all

# url = URI("https://exercisedb.p.rapidapi.com/exercises/bodyPart/back?limit=10")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["X-RapidAPI-Key"] = ENV["API_SPORT"]
# request["X-RapidAPI-Host"] = 'exercisedb.p.rapidapi.com'

# response = http.request(request)

# require 'json'

# body = response.read_body
# data = JSON.parse(body)

# data.each do |hash_exercise|
#   # Create Exercice instances with the correct association
#   Exercice.create(
#     name: hash_exercise["name"],
#     workout_id: workout.id, # Use workout_id instead of workout
#     photo: hash_exercise["workout.jpg"],
#     time: hash_exercise["time"],
#     repetition: hash_exercise["repetition"],
#     calories: hash_exercise["calories"],
#     type: hash_exercise["type"]
#   )
# end
# Create user
puts 'Creating user...'

user = User.create!(email: "user@mail.com", password: "password")
User.create!(email: "nico@mail.com", password:"coucou")

#create program

program = Program.create!(user: user)


workout_chest = Workout.create(name: "chest", photo: "workout.jpg", description: "descriptiotion")
workput_back = Workout.create(name: "back", photo: "workout.jpg", description: "description")
workout_legs = Workout.create(name: "upper%20legs", photo: "workout.jpg", description: "description")

day = 1


Workout.all.each do |workout|
  url = URI("https://exercisedb.p.rapidapi.com/exercises/bodyPart/#{workout.name}")
  # https://exercisedb.p.rapidapi.com/exercises/bodyPart/back
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["X-RapidAPI-Key"] = ENV["API_SPORT"]
  request["X-RapidAPI-Host"] = 'exercisedb.p.rapidapi.com'

  response = http.request(request)

  body = response.read_body
  data = JSON.parse(body)
  puts "creating exrecice"
  data.each do |hash_exercise|
    p hash_exercise.class
    # Create Exercice instances with the correct association+
    Exercice.create!(
      name: hash_exercise["name"],
      workout: workout, # Use workout_id instead of workout
      photo: hash_exercise["gifUrl"]
    )
  end

  program_workout = ProgramsWorkout.create!(program: program, workout: workout, date: Date.today + day,  completed: false)
  day = day + 2
end

puts "seed end"
