class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.references :lesson, null: false, foreign_key: true
      t.integer :user_grade
      t.integer :number_correct_aswers

      t.timestamps
    end
  end
end
