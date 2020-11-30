class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
