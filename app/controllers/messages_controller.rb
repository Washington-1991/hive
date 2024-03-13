class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new
    @echauffement = Exercice.where(category: "Echauffement").all
    @bras = Exercice.where(category: "Bras").all
    @jambes = Exercice.where(category: "Jambes").all


  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    if @message.save
      redirect_to messages_path
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :photo)
  end
end
