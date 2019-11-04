class AddColumnDeliveryTypeIdToDlivery < ActiveRecord::Migration[5.2]
  def change
    add_column :deliveries, :delivery_type_id, :integer, null: false
  end
end
