class PurchaseController < ApplicationController

  def index
    # TODO 商品詳細バックエンドマージ後、findの部分をparams[merchandise.id]へ
    @merchandise = Merchandise.find(1)
  end

  def create
    
  end
end
