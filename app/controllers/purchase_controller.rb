class PurchaseController < ApplicationController
  before_action :check_card, only: [:index, :create]

  def index
    @merchandise = Merchandise.find(params[:merchandise_id])
    @default_card_information = CreditCard.get_my_credit_card(current_user)
  end

  def create
    merchandise = Merchandise.find(params[:merchandise_id])
    if CreditCard.buy_merchandise(current_user, merchandise)
      redirect_to merchandise_path(merchandise)
    else
      flash[:alert] = "すでに売り切れています"
      redirect_to merchandise_purchase_index_path(merchandise)
    end
  end

  private

  def check_card
    if user_signed_in?
      redirect_to mypage_card_create_path unless current_user.credit_card.present?
    elsif
      redirect_to new_user_session_path
    end
  end
end
