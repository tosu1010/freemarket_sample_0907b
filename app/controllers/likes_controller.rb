class LikesController < ApplicationController

  def new
    
  end

  def create
    # 第一引数には、後ほどcurrent_userを入れる予定
    Like.new().regist_like(1, params[:merchandise_id])
    redirect_to merchandise_path(params[:merchandise_id])
  end

end
