class MerchandisesController < ApplicationController
  
  def index
    #最大10件表示する
    @merchandises = Merchandise.order(created_at: "DESC").limit(10)
  end

  def show
    
  end


end
