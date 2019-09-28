class CreateExhibits < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibits do |t|
      t.integer     :status,       null: false
      t.integer     :size         
      t.references  :user,         null: false, foreign_key: true
      t.references  :merchandise,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
