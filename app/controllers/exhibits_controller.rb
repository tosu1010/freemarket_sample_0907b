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
      if @brand.name.blank?
        redirect_to "/exhibits" and return
      else
        if @brand.save
          session[:brand_id] = @brand.id
    
          @category = Category.new(
            name: params[:category][:name]
          )

          if @category.save
            session[:category_id] = @category.id
      
            @merchandise = Merchandise.new(
              name: params[:merchandise][:name],
              description: params[:merchandise][:description],
              price: params[:merchandise][:price],
              delivery_id: session[:delivery_id],
              brand_id: session[:brand_id],
              category_id: 8,
              condition_id: params[:merchandise][:condition_id]
              )
          
            if @merchandise.save
              session[:merchandise_id] = @merchandise.id
        
              @exhibit = Exhibit.new(
                status: 1,
                size_id: params[:exhibit][:size_id],
                user_id: current_user.id,
                merchandise_id: session[:merchandise_id]
                )
              if @exhibit.save
                session[:exhibit_id] = @exhibit.id
          
                if params[:images].present?
                  params[:images].each do |image| 
                    @exhibit_image = ExhibitImage.new(
                      image: image,
                      exhibit_id: session[:exhibit_id]
                      )
                    @exhibit_image.save
                  end
                  redirect_to root_path and return
                end
              else
                redirect_to "/exhibits" and return #データがない場合は戻る
              end
            else
              redirect_to "/exhibits" and return #データがない場合は戻る
            end
          else
            redirect_to "/exhibits" and return #データがない場合は戻る
          end
        end
      end
    else
      redirect_to "/exhibits" and return #データがない場合は戻る
    end
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

  def edit
    @merchandise = Merchandise.find(params[:id])
    @exhibit = Exhibit.find_by(merchandise_id: @merchandise.id)
   
    if @merchandise.category.depth == 0
      @category1 = Category.find_by(id: @merchandise.category_id)
      @category2_list = @category1.children

    elsif @merchandise.category.depth == 1
      @category1 = Category.find_by(id: @merchandise.category_id).root
      @category2 = Category.find_by(id: @merchandise.category_id)
      @category3_list = @category2.children

    else @merchandise.category.depth == 2
      @category1 = Category.find_by(id: @merchandise.category_id).root
      @category2 = Category.find_by(id: @merchandise.category_id).parent
      @category3 = Category.find_by(id: @merchandise.category_id)

    end

    @size = Size.find_by(id: @merchandise.exhibit.size_id)

    @category_root = Category.where(ancestry: nil)

  
  end

  def update
    @exhibit = Exhibit.find(params[:id])
    @merchandise = Merchandise.find(params[:id])
    
    if @merchandise.update(merchandise_params)
      redirect_to exhibit_path(@exhibit)
    else
      redirect_to edit_exhibit_path(@exhibit)

    end


  end

  private
  def merchandise_params
    params.require(:merchandise).permit(:name, :description, :price, :category_id, :condition_id, :brand_id\
                                        ,exhibit_attributes: [:id, :size_id]\
                                        ,exhibit_image_attributes: [:id, {image: []}]\
                                        ,delivery_attributes: [:id, :shipping_charge_id, :shipping_area_id, :shipping_date_id, :delivery_type_id])
  end

  def exhibit_params
    params.permit(:id)
  end

end
