require 'uri'
require 'net/http'
require 'json'

puts " create user "

Exercice.destroy_all
Aptitude.destroy_all
ProgramsWorkout.destroy_all
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


user = User.create!(email: "user@mail.com", password: "password", nickname: "arthur", photo_url:("https://images.unsplash.com/photo-1557862921-37829c790f19?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))
User.create!(email: "nico@mail.com", password:"coucou", nickname: "nico", photo_url:("https://images.unsplash.com/photo-1568602471122-7832951cc4c5?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D") )
user_weights = UserWeight.create!(user: user, weight: 120.0, created_at: Date.today - 160, updated_at: Date.today - 160)
user_weights = UserWeight.create!(user: user, weight: 100.0, created_at: Date.today - 130, updated_at: Date.today - 130)
user_weights = UserWeight.create!(user: user, weight: 90.0, created_at: Date.today - 100, updated_at: Date.today - 100)
user_weights = UserWeight.create!(user: user, weight: 85.0, created_at: Date.today - 70, updated_at: Date.today - 70)
user_weights = UserWeight.create!(user: user, weight: 80.0, created_at: Date.today - 40, updated_at: Date.today - 40)



#create program

program = Program.create!(user: user)


workout_chest = Workout.create(name: "chest", photo: "workout.jpg", description: "descriptiotion")
workput_back = Workout.create(name: "back", photo: "workout.jpg", description: "description")
workout_legs = Workout.create(name: "upper%20legs", photo: "workout.jpg", description: "description")

# day = 1
workout_echauffement = Workout.create(name: "echauffement", photo: "workout.jpg", description: "descriptiotion")


# Workout.all.each do |workout|
#   url = URI("https://exercisedb.p.rapidapi.com/exercises/bodyPart/#{workout.name}")
#   # https://exercisedb.p.rapidapi.com/exercises/bodyPart/back
#   http = Net::HTTP.new(url.host, url.port)
#   http.use_ssl = true

#   request = Net::HTTP::Get.new(url)
#   request["X-RapidAPI-Key"] = ENV["API_SPORT"]
#   request["X-RapidAPI-Host"] = 'exercisedb.p.rapidapi.com'

#   response = http.request(request)

#   body = response.read_body
#   data = JSON.parse(body)
#   p data
#   puts "creating exrecice"
#   data.each do |hash_exercise|
#     # Create Exercice instances with the correct association+
#     exo = Exercice.create!(
#       name: hash_exercise["name"],
#       workout: workout, # Use workout_id instead of workout
#       photo: hash_exercise["gifUrl"]
#     )
#   end

#   program_workout = ProgramsWorkout.create!(program: program, workout: workout, date: Date.today + day,  completed: false)
#   day = day + 2
# end

puts "seed end"


# (name:"Velo" , photo:"" , time:"30m et 5m recup" , repetition:"1x" , calories:"80kcl" , type:"Echauffement" , description:"Un échauffement sur un vélo stationnaire est un excellent moyen de préparer votre corps à l'activité physique à venir.")
# (name:"elliptique" , photo:"" , time:"30m et 5m recup" , repetition:"1x" , calories:"60kcl" , type:"Echauffement" , description:"Un échauffement en elliptique stationnaire est un excellent moyen de préparer votre corps à l'activité physique à venir.")

# (name:"Biceps" , photo:"" , time:"15m et 2m recup" , repetition:"4x12" , calories:"20kcl" , type:"Bras" , description:"Cet exercice est efficace pour développer la force et la taille des biceps.")
# (name:"Triceps" , photo:"" , time:"15m et 2m recup" , repetition:"4x12" , calories:"20kcl" , type:"Bras" , description:"Cet exercice est efficace pour développer la force et la taille des triceps.")
# (name:"Deltoide" , photo:"" , time:"15m et 2m recup" , repetition:"4x12" , calories:"20kcl" , type:"Bras" , description:"Cet exercice est efficace pour développer la force et la taille des deltoide.")
# (name:"Cuadriceps" , photo:"" , time:"15m et 2m recup" , repetition:"3x15" , calories:"40kcl" , type:"Jambes" , description:"Un excellent exercice pour développer la force et la stabilité des quadriceps, ainsi que pour améliorer l'équilibre et la coordination")
# (name:"Adducteurs" , photo:"" , time:"15m et 2m recup" , repetition:"3x15" , calories:"40kcl" , type:"Jambes" , description:"Un excellent exercice pour développer la force et la stabilité des adducteurs, ainsi que pour améliorer l'équilibre et la coordination")
# (name:"Trapeze" , photo:"" , time:"15m et 2m recup" , repetition:"3x15" , calories:"25kcl" , type:"Dos" , description:"Des tractions, des rotations et des positions de suspension pour renforcer les muscles du haut du corps, améliorer la stabilité du tronc et développer la coordination")
# (name:"Pectoraux" , photo:"" , time:"15m et 2m recup" , repetition:"4x10" , calories:"30kcl" , type:"Pecs" , description:"Allongé sur un banc, tu abaisses la barre ou les alternes vers la poitrine, puis la pousses vers le haut. Cela cible les muscles pectoraux, les épaules et les triceps")

exercise = Exercice.create!(name: "Velo", photo: "/app/assets/images/workout/bike.jpg", time: "30m et 5m recup", repetition: "1x", calories: "80kcl", category: "Echauffement", description: "Un échauffement sur un vélo stationnaire est un excellent moyen de préparer votre corps à l'activité physique à venir.", workout: workout_echauffement)
exercise = Exercice.create(name: "elliptique", photo: "/app/assets/images/workout/elliptique.jpg", time: "30m et 5m recup", repetition: "1x", calories: "60kcl" , category: "Echauffement" , description: "Un échauffement en elliptique stationnaire est un excellent moyen de préparer votre corps à l'activité physique à venir.", workout: workout_echauffement)

exercise = Exercice.create(name: "Biceps", photo: "/app/assets/images/workout/biceps.jpg", time: "15m et 2m recup", repetition: "4x12", calories: "20kcl" , category: "Bras" , description: "Cet exercice est efficace pour développer la force et la taille des biceps.", workout: workout_echauffement)
exercise = Exercice.create(name: "Triceps", photo: "/app/assets/images/workout/triceps.jpg", time: "15m et 2m recup", repetition: "4x12", calories: "20kcl" , category: "Bras" , description: "Cet exercice est efficace pour développer la force et la taille des triceps.", workout: workout_echauffement)
exercise = Exercice.create(name: "Deltoide", photo: "/app/assets/images/workout/deltoide.jpg", time: "15m et 2m recup", repetition: "4x12", calories: "20kcl" , category: "Bras" , description: "Cet exercice est efficace pour développer la force et la taille des deltoide.", workout: workout_echauffement)
exercise = Exercice.create(name: "Cuadriceps", photo: "/app/assets/images/workout/cuadriceps.jpg", time: "15m et 2m recup", repetition: "3x15", calories: "40kcl" , category: "Jambes" , description: "Un excellent exercice pour développer la force et la stabilité des quadriceps, ainsi que pour améliorer l'équilibre et la coordination", workout: workout_echauffement)
exercise = Exercice.create(name: "Adducteurs", photo: "/app/assets/images/workout/adducteurs.jpg", time: "15m et 2m recup", repetition: "3x15", calories: "40kcl" , category: "Jambes" , description: "Un excellent exercice pour développer la force et la stabilité des adducteurs, ainsi que pour améliorer l'équilibre et la coordination", workout: workout_echauffement)
exercise = Exercice.create(name: "Trapeze", photo: "/app/assets/images/workout/trapeze.jpg", time: "15m et 2m recup", repetition: "3x15", calories: "25kcl" , category: "Dos" , description: "Des tractions, des rotations et des positions de suspension pour renforcer les muscles du haut du corps, améliorer la stabilité du tronc et développer la coordination", workout: workout_echauffement)
exercise = Exercice.create(name: "Pectoraux", photo: "/app/assets/images/workout/pecs.jpg", time: "15m et 2m recup", repetition: "4x10", calories: "30kcl" , category: "Pecs" , description: "Allongé sur un banc, tu abaisses la barre ou les alternes vers la poitrine, puis la pousses vers le haut. Cela cible les muscles pectoraux, les épaules et les triceps", workout: workout_echauffement)

