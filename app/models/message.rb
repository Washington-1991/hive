class Message < ApplicationRecord
  belongs_to :user
  belongs_to :programs_workout, optional: true
  has_one_attached :photo

end
