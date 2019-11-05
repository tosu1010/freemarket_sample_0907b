class CommentsController < ApplicationController

  def new
    redirect_to root_path
  end

  def create
    # user_idの部分に関しては、後々current_user.idにする予定
    Comment.create(comment_params)
    redirect_to merchandise_path(merchandise_params[:merchandise_id])
  end

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: 1, merchandise_id: merchandise_params[:merchandise_id])
  end

  def merchandise_params
    params.permit(:merchandise_id)
  end
end
