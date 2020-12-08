class Account::ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(user1_id: current_user.id)
    .or(Chatroom.where(user2_id: current_user.id))
  end
end
