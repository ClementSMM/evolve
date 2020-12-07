class CreateQuizzScores < ActiveRecord::Migration[6.0]
  def change
    create_table :quizz_scores do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true
      t.integer :number_correct_answer

      t.timestamps
    end
  end
end
