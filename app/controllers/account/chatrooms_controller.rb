class Account::ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(user1_id: current_user.id)
    .or(Chatroom.where(user2_id: current_user.id))
    @chatroom = Chatroom.new
    users = User.all
    @users = users.map { |user| user.username + " - lev " + user.level.to_s}
  end
end
