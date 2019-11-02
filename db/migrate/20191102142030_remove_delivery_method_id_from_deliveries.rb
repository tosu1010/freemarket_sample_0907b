class RemoveDeliveryMethodIdFromDeliveries < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :delivery_methods, :deliveries
    remove_reference :delivery_methods, :delivery, index: true
  end
end
