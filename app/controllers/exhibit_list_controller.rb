class ExhibitListController < ApplicationController

  # 出品中の商品
  def list
    @exhibit_list = Exhibit.where(user_id: current_user.id, status: 1)
  end

  # 取引中の商品
  def dealing
    @exhibit_list = Exhibit.where(user_id: current_user.id, status: 2)
  end

  # 売却済みの商品
  def complete
    @exhibit_list = Exhibit.where(user_id: current_user.id, status: 3)
  end
end
