class ExhibitsController < ApplicationController

  def index
    @exhibit = Exhibit.new
    @exhibit_image = ExhibitImage.new
    @category = Category.all.where("ancestry IS NULL").limit(13)
    @delivery = Delivery.new
    @merchandise = Merchandise.new
    @brand = Brand.new
  end

  def get_category_children
    @category_children = Category.find(params[:parent_id].to_i).children
  end

  def create
    Merchandise.transaction do
      delivery = Delivery.create!(
        shipping_charge_id: params[:delivery][:shipping_charge_id],
        shipping_area_id: params[:delivery][:shipping_area_id],
        shipping_date_id: params[:delivery][:shipping_date_id],
        delivery_type_id: params[:delivery][:delivery_type_id]
        )
      session[:delivery_id] = delivery.id

      brand = Brand.find_or_create_by!(name: params[:brand][:name])
      session[:brand_id] = brand.id
      
      merchandise = Merchandise.create!(
        name: params[:merchandise][:name],
        description: params[:merchandise][:description],
        price: params[:merchandise][:price],
        delivery_id: session[:delivery_id],
        brand_id: session[:brand_id],
        category_id: params[:category][:id],
        condition_id: params[:merchandise][:condition_id]
        )
      session[:merchandise_id] = merchandise.id

      exhibit = Exhibit.create!(
        status: 1,
        size_id: params[:exhibit][:size_id],
        user_id: current_user.id,
        merchandise_id: session[:merchandise_id]
        )
        session[:exhibit_id] = exhibit.id
        
        if params[:images].present?
          params[:images].each do |image| 
            ExhibitImage.create!(
              image: image,
              exhibit_id: session[:exhibit_id]
          )
        end
      end
    end
      redirect_to root_path
    rescue => e
      puts e
      redirect_to "/exhibits" #データがない場合は戻る
  end

  def show
    # Viewから送られてきたparamsよりインスタンス生成
    @exhibit = Exhibit.find(params[:id])
    @merchandise = Merchandise.find(params[:id])
    @comment = Comment.new()
  end

  def destroy
    # Viewから送られてきたparamsよりインスタンス生成
    merchandise = Merchandise.find(params[:id])
    # 削除処理
    if merchandise.destroy
      # リダイレクト先はマイページ（仮）
      redirect_to mypage_index_path
    else
      redirect_to action: :show
    end
  end
end
