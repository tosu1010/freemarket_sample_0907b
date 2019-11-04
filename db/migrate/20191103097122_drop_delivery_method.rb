class DropDeliveryMethod < ActiveRecord::Migration[5.2]
  def up
    drop_table :delivery_methods
  end
  
  def down
    create_table :delivery_methods do |t|
      t.string :delivery_type_name, null: false
      t.string :company_name, null: false
      t.references :delivery, null: false, foreign_key: true
      t.timestamps
    end
  end
end