class ChangeDataShippingAreaIdToDeliveries < ActiveRecord::Migration[5.2]
  def up
    change_column :deliveries, :shipping_area_id, :integer
    change_column :deliveries, :shipping_date_id, :integer
  end

  def down
    change_column :deliveries, :shipping_area_id, :string
    change_column :deliveries, :shipping_date_id, :string
  end
end
