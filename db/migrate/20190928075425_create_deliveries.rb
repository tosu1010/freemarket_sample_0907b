class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.integer :shipping_charge,  null: false
      t.string  :shipping_area,    null: false
      t.string  :shipping_date,    null: false
      t.timestamps
    end
  end
end
