class CreateExhibitImages < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibit_images do |t|
      t.string     :image,   null: false
      t.references :exhibit, null: false, foreign_key: true
      t.timestamps
    end
  end
end
