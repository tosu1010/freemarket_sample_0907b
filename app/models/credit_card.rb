class CreditCard < ApplicationRecord
  belongs_to :user

  def self.get_new_credit_card(user, payjp_token)
    Payjp.api_key = ENV['PAY_JP_TEST_SECRET_KEY']
    if payjp_token.blank?
      # redirect_to action: 'new'
    else
      customer = Payjp::Customer.create(
        description: '登録テスト',
        email: user.email,
        card: payjp_token,
        metadata: {user_id: user.id}
      )
      credit_card = CreditCard.new(user_id: user.id, customer_id: customer.id, card_id: customer.default_card)
    end
  end

  def self.get_my_credit_card(user)
    card = CreditCard.where(user_id: user.id).first
    if card.blank?
      
    else
      Payjp.api_key = ENV['PAY_JP_TEST_SECRET_KEY']
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.cards.retrieve(card.card_id)
    end
  end
end
