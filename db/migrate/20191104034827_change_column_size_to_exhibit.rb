class ChangeColumnSizeToExhibit < ActiveRecord::Migration[5.2]
  def up
    rename_column :exhibits, :size, :size_id
    change_column :exhibits, :size_id, :integer
  end

  def down
    rename_column :exhibits, :size_id, :size
    change_column :exhibits, :size, :string
  end
end
