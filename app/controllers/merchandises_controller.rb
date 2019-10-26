class MerchandisesController < ApplicationController
  
  def index
    #最大10件表示する
    @merchandises = Merchandise.order(created_at: "DESC").limit(10)
  end

  def show
    # 別途実装
  end

end
