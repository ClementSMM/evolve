class CreateUsersPrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :users_programs do |t|
      t.string :status
      t.integer :last_lesson_id
      t.integer :last_step_id
      t.references :user, null: false, foreign_key: true
      t.references :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
