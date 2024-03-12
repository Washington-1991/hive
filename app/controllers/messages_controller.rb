class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    if @message.save
      redirect_to message_path
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
