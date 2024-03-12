class UserWeightsController < ApplicationController
  def create
    @user_weight = UserWeight.new(user_weight_params)
    @user_weight.user = current_user
    if @user_weight.save
      redirect_to progress_path
    else
      render 'pages/progress'
    end
  end

  private

  def user_weight_params
    params.require(:user_weight).permit(:weight)
  end
end
