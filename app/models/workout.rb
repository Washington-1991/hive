class Workout < ApplicationRecord
  has_many :programs_workouts
  has_many :programs, through: :programs_workouts
  has_many :exercices
end
