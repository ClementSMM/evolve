class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.string :title
      t.references :lesson, null: false, foreign_key: true
      t.integer :number
      t.string :url
      t.string :type
      t.text :text_content

      t.timestamps
    end
  end
end
