class LikesController < ApplicationController
  def create
    # user_idには、後ほどcurrent_userを入れる予定
    @merchandise = Merchandise.find(params[:merchandise_id])
    like = Like.new(value: 1, user_id: 1, merchandise_id: params[:merchandise_id])
    like.save
  end

  def destroy
    # user_idには、後ほどcurrent_userを入れる予定
    @merchandise = Merchandise.find(params[:merchandise_id])
    like = Like.find_by(user_id: 1, merchandise_id: params[:merchandise_id])
    like.delete
  end
end
