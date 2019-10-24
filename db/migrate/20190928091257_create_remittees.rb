class CreateRemittees < ActiveRecord::Migration[5.2]
  def change
    create_table :remittees do |t|
      t.text        :bank_name,            null: false
      t.integer     :account_type,         null: false
      t.integer     :branch_code,          null: false
      t.integer     :account_number,       null: false
      t.string      :account_first_name,   null: false
      t.string      :account_last_name,    null: false
      t.references  :personal_information, null: false, foreign_key: true
      t.timestamps
    end
  end
end
