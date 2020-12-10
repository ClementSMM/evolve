class ChangeUserTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :current_sign_in_at
    add_column :users, :days_streak, :integer
  end
end
