class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.references :program, null: false, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
