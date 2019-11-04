class AddConditionIdToMerchandise < ActiveRecord::Migration[5.2]
  def change
    add_column :merchandises, :condition_id, :integer, null: false
  end
end
