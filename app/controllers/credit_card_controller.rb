class CreditCardController < ApplicationController

  def create
    @credit_card = CreditCard.get_new_credit_card(current_user, params['payjp-token'])
    if @credit_card.save
      redirect_to mypage_index_path
    else
      redirect_to mypage_card_create_path
    end
  end

end
