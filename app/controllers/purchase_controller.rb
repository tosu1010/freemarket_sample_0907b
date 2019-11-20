class PurchaseController < ApplicationController

  def index
    if user_signed_in?
      @merchandise = Merchandise.find(params[:merchandise_id])
      @default_card_information = CreditCard.get_my_credit_card(current_user)
    else
      redirect_to new_user_session_path
    end
  end

  def create
    
  end
end
