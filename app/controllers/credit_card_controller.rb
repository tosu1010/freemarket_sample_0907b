class CreditCardController < ApplicationController
  def new
    card = CreditCard.where(user_id: current_user.id)
    redirect_to action: 'show' if card.exists?
  end

  def pay
    Payjp.api_key = ENV['PAY_JP_TEST_SECRET_KEY']
    if params['payjp-token'].blank?
      redirect_to action: 'new'
    else
      customer = Payjp::Customer.create(
        description: '登録テスト',
        email: current_user.email,
        card: params['payjp-token'],
        metadata: {user_id: current_user.id}
      )
      @card = CreditCard.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)

      if @card.save
        redirect_to "サインアップの次の画面"
      else
        redirect_to action: 'pay'
      end
    end
  end


  def delete
    card =CreditCard.where(user_id: current_user.id).first
    if card.blank?
    else
      Payjp.api_key = ENV['PAY_JP_TEST_SECRET_KEY']
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
    redirect_to action: 'new'
  end

  def show
    card = CreditCard.where(user_id: current_user.id).first
    if card.blank?
      redirect_to action: 'new'
    else
      Payjp.api_key = ENV['PAY_JP_TEST_SECRET_KEY']
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def buy
    card = current_user.card
    if card.blank?
      redirect_to action: "new"
      flash[:alert] = "購入にはクレジットカード登録が必要です"
    else
      @merchandise = Merchandise.find(params[:item][:id])
      card = current_user.card
      Payjp.api_key = ENV['PAY_JP_TEST_SECRET_KEY']
      Payjp::Charge.create(
        amount: @merchandise.price,
        customer: card.customer_id,
        currency: 'jpy'
      )
      if Purchase.create(status: 1, user_id: current_user.id, merchandise_id: @merchandise.id)
        flash[:notice] = "購入しました"
        @merchandise.exhibit.update(status: 2)
        redirect_to item_path(1)
      else
        flash[:alert] = "購入に失敗しました"
        redirect_to item_path(1)
      end
    end
  end


end
