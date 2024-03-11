class UserWeight < ApplicationRecord
  belongs_to :user
  validates :weight, presence: true
  validates :entry_date, presence: true

end
