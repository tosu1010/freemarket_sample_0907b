class CreateMerchandises < ActiveRecord::Migration[5.2]
  def change
    create_table :merchandises do |t|
      t.string     :name,          null: false 
      t.text       :description,   null: false 
      t.integer    :price,         null: false 
      t.references :delivery,   null: false, foreign_key: true 
      t.references :brand,      null: false, foreign_key: true 
      t.references :category,   null: false, foreign_key: true 
      t.timestamps
    end
  end
end
