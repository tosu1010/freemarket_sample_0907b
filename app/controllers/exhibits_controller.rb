class ExhibitsController < ApplicationController

  def index
    @exhibit = Exhibit.new
    @exhibit_image = ExhibitImage.new
    @category = Category.all.where("ancestry IS NULL").limit(13)
    @delivery = Delivery.new
    @merchandise = Merchandise.new
    @brand = Brand.new
  end

  def search
    respond_to do |format|
      format.html
      format.json do
       @children = Category.find(params[:category_id]).children
       #親ボックスのidから子ボックスのidの配列を作成してインスタンス変数で定義
      end
    end
  end

  def create
    @delivery = Delivery.new(
      shipping_charge_id: params[:delivery][:shipping_charge_id],
      shipping_area_id: params[:delivery][:shipping_area_id],
      shipping_date_id: params[:delivery][:shipping_date_id],
      delivery_type_id: params[:delivery][:delivery_type_id]
      )
    if @delivery.save
      session[:delivery_id] = @delivery.id

      @brand = Brand.new(
        name: params[:brand][:name]
        )
      if @brand.name.present?
        redirect_to "/"
      else 
        redirect_to "/exhibits"
      end

    else redirect_to "/exhibits" #データがない場合は戻る

    end
    if @brand.save
      session[:brand_id] = @brand.id

      @category = Category.new(
        name: params[:category][:name]
      )

    else redirect_to "/exhibits" #データがない場合は戻る

    end
    if @category.save
      session[:category_id] = @category.id

      @merchandise = Merchandise.new(
        name: params[:merchandise][:name],
        description: params[:merchandise][:description],
        price: params[:merchandise][:price],
        delivery_id: session[:delivery_id],
        brand_id: session[:brand_id],
        category_id: session[:category_id],
        condition_id: session[:condition_id],
        )

    else redirect_to "/exhibits" #データがない場合は戻る

    end
    if @merchandise.save
      session[:merchandise_id] = @merchandise.id

      @exhibit = Exhibit.new(
        status: params[:exhibit][:status],
        size_id: params[:exhibit][:size_id],
        # user_id: current_user.id,
        merchandise_id: session[:merchandise_id]
        )

    else redirect_to "/exhibits" #データがない場合は戻る

    end
    if @exhibit.save
      session[:exhibit_id] = @exhibit.id

      if params[:images].present?
        params[:images].each do |image| 
          @exhibit_image = ExhibitImage.new(
            image: image,
            exhibit_id: session[:exhibit_id]
            )

          if @exhibit_image.save
            redirect_to "mypage_index_path"

          else 
            redirect_to "/exhibits" #データがない場合は戻る

          end

        else redirect_to "/exhibits" #データがない場合は戻る

        end
      end
    end
  end

end
