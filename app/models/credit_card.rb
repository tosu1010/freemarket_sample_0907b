class CreditCard < ApplicationRecord
  belongs_to :user

  # 新規クレジットカードを登録するためのトークン等を取得するメソッド
  def self.get_new_credit_card(user, payjp_token)
    Payjp.api_key = ENV['PAY_JP_TEST_SECRET_KEY']
    customer = Payjp::Customer.create(
      description: '登録テスト',
      email: user.email,
      card: payjp_token,
      metadata: {user_id: user.id}
    )
    credit_card = CreditCard.new(user_id: user.id, customer_id: customer.id, card_id: customer.default_card)
  end

  # 登録済みのカード情報を取得するためのメソッド
  def self.get_my_credit_card(user)
    card = CreditCard.where(user_id: user.id).first
    Payjp.api_key = ENV['PAY_JP_TEST_SECRET_KEY']
    customer = Payjp::Customer.retrieve(card.customer_id)
    customer.cards.retrieve(card.card_id)
  end

  def self.buy_merchandise(user, merchandise)
    card = user.credit_card

    purchase = Purchase.new(status: 1, user_id: user.id, merchandise_id: merchandise.id)
    if purchase.valid?
      begin
        purchase.transaction do
          Payjp.api_key = ENV['PAY_JP_TEST_SECRET_KEY']
          Payjp::Charge.create(
            amount: merchandise.price,
            customer: card.customer_id,
            currency: 'jpy'
          )
          purchase.save!
          merchandise.exhibit.update!(status: 2)
        end
          true
      rescue
        false
      end
    end
  end
end
