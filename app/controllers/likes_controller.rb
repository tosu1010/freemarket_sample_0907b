class LikesController < ApplicationController
  before_action :set_merchandise, only: [:create, :destroy]

  def create
    # user_idには、後ほどcurrent_userを入れる予定
    like = Like.new(value: 1, user_id: 1, merchandise_id: params[:merchandise_id])
    like.save
  end

  def destroy
    # user_idには、後ほどcurrent_userを入れる予定
    like = Like.find_by(user_id: 1, merchandise_id: params[:merchandise_id])
    like.delete
  end

  private
  
  def set_merchandise
    @merchandise = Merchandise.find(params[:merchandise_id])
  end
end
