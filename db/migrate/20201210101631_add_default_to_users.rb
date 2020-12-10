class AddDefaultToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :days_streak, 0
    change_column_default :users, :last_sign_in_at, Date.today
    change_column_default :users, :xp, 0
    change_column_default :users, :level, 1
  end
end
