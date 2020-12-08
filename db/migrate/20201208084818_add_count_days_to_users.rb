class AddCountDaysToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :days_counter, :integer
  end
end
