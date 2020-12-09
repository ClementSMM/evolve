class RemoveUsersIdFromChatrooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :chatrooms, :user1_id
    remove_column :chatrooms, :user2_id
  end
end
