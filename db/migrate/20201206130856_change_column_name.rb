class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :steps, :type, :media_type
  end
end
