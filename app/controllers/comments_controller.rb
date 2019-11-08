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
    # user_idの部分に関しては、後々current_user.idにする予定
    # Comment.create(comment_params)
    # redirect_to merchandise_path(@merchandise.id))
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: 1, merchandise_id: params[:merchandise_id])
  end

  
  def set_merchandise
    @merchandise = Merchandise.find(params[:merchandise_id])
  end
end
