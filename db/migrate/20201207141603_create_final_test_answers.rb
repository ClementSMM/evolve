class CreateFinalTestAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :final_test_answers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :final_test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
