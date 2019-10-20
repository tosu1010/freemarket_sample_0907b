class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.text       :name, null: false
      t.boolean    :whether_usefullness, default: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
