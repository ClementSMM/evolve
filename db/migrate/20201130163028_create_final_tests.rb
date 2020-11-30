class CreateFinalTests < ActiveRecord::Migration[6.0]
  def change
    create_table :final_tests do |t|
      t.references :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
