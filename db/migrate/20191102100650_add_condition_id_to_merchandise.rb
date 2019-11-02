class AddConditionIdToMerchandise < ActiveRecord::Migration[5.2]
  def change
    add_reference :merchandises, :condition, foreign_key: true, null: false
  end
end
