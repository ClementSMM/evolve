class AddDefaultToQuizzScore < ActiveRecord::Migration[6.0]
  def change
    change_column_default :quizz_scores, :number_correct_answer, 0
  end
end
