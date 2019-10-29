class AddIndexToMerchandise < ActiveRecord::Migration[5.2]
  def change
    add_index :merchandises, [:name, :category_id]
  end
end
