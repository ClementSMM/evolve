class AddFinalTestStatusToUsersPrograms < ActiveRecord::Migration[6.0]
  def change
    add_column :users_programs, :final_test_status, :string, default: "vérouillé"
  end
end
