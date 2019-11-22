class LikesController < ApplicationController
  before_action :set_merchandise, only: [:create, :destroy]

  def create
    like = Like.new(value: 1, user_id: current_user.id, merchandise_id: params[:merchandise_id])
    like.save
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, merchandise_id: params[:merchandise_id])
    like.delete
  end

  private
  
  def set_merchandise
    @merchandise = Merchandise.find(params[:merchandise_id])
  end
end
