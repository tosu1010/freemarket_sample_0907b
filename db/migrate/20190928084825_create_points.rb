class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.integer     :points          
      t.integer     :expiration_date, null: false
      t.references  :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
