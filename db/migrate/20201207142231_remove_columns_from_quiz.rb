class RemoveColumnsFromQuiz < ActiveRecord::Migration[6.0]
  def change
    remove_column :quizzes, :user_grade
    remove_column :quizzes, :number_correct_aswers
  end
end
