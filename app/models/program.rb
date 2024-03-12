class Program < ApplicationRecord
  belongs_to :user
  has_many :programs_workouts
  has_many :workouts, through: :programs_workouts

end
