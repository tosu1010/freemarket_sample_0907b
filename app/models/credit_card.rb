class CreditCard < ApplicationRecord
  belongs_to :user

  def get_new_credit_card(user)
    Payjp.api_key = ENV['PAY_JP_TEST_SECRET_KEY']
    if params['payjp-token'].blank?
      redirect_to action: 'new'
    else
      customer = Payjp::Customer.create(
        description: '登録テスト',
        email: user.email,
        card: params['payjp-token'],
        metadata: {user_id: user.id}
      )
      @credit_card = CreditCard.new(user_id: user.id, customer_id: customer.id, card_id: customer.default_card)
    end
  end
end
