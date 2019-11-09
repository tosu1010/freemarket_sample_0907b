class CommentsController < ApplicationController
  before_action :set_merchandise
  def new
    redirect_to root_path
  end

  def create
    @comment =  @merchandise.comments.new(comment_params)
    @comment.save
    respond_to do |format|
      format.html { redirect_to merchandise_path(@merchandise) }
      format.json
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: 1, merchandise_id: params[:merchandise_id])
  end

  
  def set_merchandise
    @merchandise = Merchandise.find(params[:merchandise_id])
  end
end
