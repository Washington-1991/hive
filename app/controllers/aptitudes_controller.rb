class AptitudesController < ApplicationController

  def new
    @aptitude = Aptitude.new
  end

  def create
    @aptitude = Aptitude.new(aptitude_params)
    @aptitude.user = current_user
    if @aptitude.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def aptitude_params
    params.require(:aptitude).permit(:shoulder, :hip, :ankle)
  end

end
