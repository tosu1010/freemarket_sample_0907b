class CreateToDos < ActiveRecord::Migration[5.2]
  def change
    create_table :to_dos do |t|
      t.text        :comment,     null: false
      t.references  :user,        null: false, foreign_key: true
      t.references  :exhibit,     null: false, foreign_key: true
      t.references  :purchase,    null: false, foreign_key: true
      t.references  :merchandise, null: false, foreign_key: true
      t.timestamps
    end
  end
end
