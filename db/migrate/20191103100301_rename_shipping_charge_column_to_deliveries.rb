class RenameShippingChargeColumnToDeliveries < ActiveRecord::Migration[5.2]
  def change
    rename_column :deliveries, :shipping_charge, :shipping_charge_id
    rename_column :deliveries, :shipping_area, :shipping_area_id
    rename_column :deliveries, :shipping_date, :shipping_date_id
  end
end
