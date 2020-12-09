class ChatroomsController < ApplicationController
  def create
    guest = User.find(set_params[:guest])
    chatroom = Chatroom.new
    chatroom.guest = guest
    chatroom.host = current_user
    prev_chatroom = check_chatroom(guest).first
    if prev_chatroom.present?
      redirect_to chatroom_path(prev_chatroom)
      return
    end
    if chatroom.save
      redirect_to chatroom_path(chatroom)
    else
      render "account/chatrooms"
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  private

  def set_params
    params.require(:chatroom).permit(:guest)
  end

  def check_chatroom(guest)
    prev_chatroom = Chatroom.where(guest: current_user, host: guest)
    .or(Chatroom.where(guest: guest, host: current_user))
    return prev_chatroom
  end
end
