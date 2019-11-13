class PurchaseController < ApplicationController

  def index
    @merchandise = Merchandise.find(params[:merchandise_id])
    # こちらはcurrent_userにする予定
    @user = User.find(1)
  end

  def create
    
  end
end
