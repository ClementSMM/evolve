class Account::ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(guest: current_user)
    .or(Chatroom.where(host: current_user))
    @chatroom = Chatroom.new
    @users = User.all
  end
end
