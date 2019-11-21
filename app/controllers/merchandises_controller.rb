class MerchandisesController < ApplicationController
  before_action :set_exhibit
  def index
    #最大10件表示する
    @merchandises = Merchandise.order(created_at: "DESC").limit(10)
  end

  def show
    begin
      @merchandise = Merchandise.find(merchandise_params[:id])
      @comment = Comment.new()
      @like = Like.new()
    rescue StandardError
      render :sorry
    end
  end

  def merchandise_params
    params.permit(:id)
  end

  def create
    @merchandise = Merchandise.new(merchandise_params)
    if @merchandise.save
      redirect_to :action => 'index'
    else
      redirect_to ""
    end
  end

  private
  def merchandise_params
    params.require(:merchandise).permit(:name, :description, :price)
  end

  def set_exhibit
    @exhibit = Exhibit.find(params[:exhibit_id])
  end

end
