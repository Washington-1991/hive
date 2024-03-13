class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_weights, dependent: :destroy
  has_many :programs, dependent: :destroy

  def get_weights
    weights = {}
    user_weights.each do |weight|
      weights[weight.created_at.strftime("%B %d, %Y")] = weight.weight
    end
    return weights
  end


  def user_calories
    user_calories = {}
    user_calories.each do |calorie|
      user_calories[calories.created_at.strftime("%B %d, %Y")] = calorie.calorie
    end
    return user_calories
  end

end
