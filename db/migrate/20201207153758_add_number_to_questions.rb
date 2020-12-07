class AddNumberToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :number, :integer
  end
end
