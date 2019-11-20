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
      binding.pry
      credit_card = CreditCard.new(user_id: user.id, customer_id: customer.id, card_id: customer.default_card)
    end
  end
end
