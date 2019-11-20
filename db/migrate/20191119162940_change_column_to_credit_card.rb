class ChangeColumnToCreditCard < ActiveRecord::Migration[5.2]
  def change
    remove_column :credit_cards, :card_number, :int
    remove_column :credit_cards, :limit_month, :int
    remove_column :credit_cards, :limit_year, :int
    remove_column :credit_cards, :security_code, :int

    add_column :credit_cards, :customer_id, :int
    add_column :credit_cards, :card_id, :int
  end
end
