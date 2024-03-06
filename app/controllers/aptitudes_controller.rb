class AptitudesController < ApplicationController

  def new
    @aptitude = Aptitude.new
  end

  def create
    @aptitude = Aptitude.new(aptitude_params)
    if @aptitude.save
      redirect_to root_path
    else
      render :new
    end
  end

end
