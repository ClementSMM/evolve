class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
