class CreateBalances < ActiveRecord::Migration[5.2]
  def change
    create_table :balances do |t|
      t.integer    :deadline,    null: false
      t.references :user,        null: false, foreign_key: true
      t.references :merchandise, null: false, foreign_key: true
      t.timestamps
    end
  end
end
