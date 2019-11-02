class AddDeliveryIdToDeliveryMethods < ActiveRecord::Migration[5.2]
  def up
    add_reference :deliveries, :delivery_method, foreign_key: true, null: false
  end
end
