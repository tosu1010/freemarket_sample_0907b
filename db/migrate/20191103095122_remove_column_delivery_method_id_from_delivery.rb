class RemoveColumnDeliveryMethodIdFromDelivery < ActiveRecord::Migration[5.2]
  def up
    remove_foreign_key :deliveries, :delivery_methods
    remove_reference :deliveries, :delivery_method, index: true
  end

  def down
    add_reference :deliveries, :delivery_method, foreign_key: true, null: false
  end
end
