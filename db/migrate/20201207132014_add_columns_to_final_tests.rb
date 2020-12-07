class AddColumnsToFinalTests < ActiveRecord::Migration[6.0]
  def change
    add_column :final_tests, :description, :text
    add_column :final_tests, :objectifs, :text
  end
end
