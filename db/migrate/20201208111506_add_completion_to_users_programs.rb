class AddCompletionToUsersPrograms < ActiveRecord::Migration[6.0]
  def change
    add_column :users_programs, :completion, :integer, default: 0
  end
end
