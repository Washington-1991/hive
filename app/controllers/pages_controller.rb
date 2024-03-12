class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home]

  def home
  end

  def dashboard
  end

  def profile
  end

  def aboutus
  end

  def progress
    @user_weights = UserWeight.new
  end

  def advice
  end

end
