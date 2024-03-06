class Aptitude < ApplicationRecord
  belongs_to :user
  validates :shoulder, :hip, :ankle, presence: true
end
