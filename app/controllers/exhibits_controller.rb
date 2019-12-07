class ExhibitsController < ApplicationController

  def index
    @exhibit = Exhibit.new
    @exhibit_image = ExhibitImage.new
    @category = Category.new

    @category = Category.all.where("ancestry IS NULL").limit(13)
    @category_ladies = Category.all.where("ancestry LIKE 47")
    @category_ladies2_1 = Category.all.where("ancestry LIKE ?", "%/48")
    @category_ladies2_2 = Category.all.where("ancestry LIKE ?", "%/63")
    @category_ladies2_3 = Category.all.where("ancestry LIKE ?", "%/78")
    @category_ladies2_4 = Category.all.where("ancestry LIKE ?", "%/91")
    @category_ladies2_5 = Category.all.where("ancestry LIKE ?", "%/97")
    @category_ladies2_6 = Category.all.where("ancestry LIKE ?", "%/102")
    @category_ladies2_7 = Category.all.where("ancestry LIKE ?", "%/113")
    @category_ladies2_8 = Category.all.where("ancestry LIKE ?", "%/116")
    @category_ladies2_9 = Category.all.where("ancestry LIKE ?", "%/122")
    @category_ladies2_10 = Category.all.where("ancestry LIKE ?", "%/130")
    @category_ladies2_11 = Category.all.where("ancestry LIKE ?", "%/145")
    @category_ladies2_12 = Category.all.where("ancestry LIKE ?", "%/157")
    @category_ladies2_13 = Category.all.where("ancestry LIKE ?", "%/162")
    @category_ladies2_14 = Category.all.where("ancestry LIKE ?", "%/177")
    
    @category_mens = Category.all.where("ancestry LIKE ?", "184")
    @category_mens2_1 = Category.all.where("ancestry LIKE ?", "%/185")
    @category_mens2_2 = Category.all.where("ancestry LIKE ?", "%/198")
    @category_mens2_3 = Category.all.where("ancestry LIKE ?", "%/213")
    @category_mens2_4 = Category.all.where("ancestry LIKE ?", "%/223")
    @category_mens2_5 = Category.all.where("ancestry LIKE ?", "%/232")
    @category_mens2_6 = Category.all.where("ancestry LIKE ?", "%/245")
    @category_mens2_7 = Category.all.where("ancestry LIKE ?", "%/251")
    @category_mens2_8 = Category.all.where("ancestry LIKE ?", "%/259")
    @category_mens2_9 = Category.all.where("ancestry LIKE ?", "%/268")
    @category_mens2_10 = Category.all.where("ancestry LIKE ?", "%/283")
    @category_mens2_11 = Category.all.where("ancestry LIKE ?", "%/290")
    @category_mens2_12 = Category.all.where("ancestry LIKE ?", "%/295")
    @category_mens2_13 = Category.all.where("ancestry LIKE ?", "%/300")

    @category_baby_kids = Category.all.where("ancestry LIKE ?", "305")
    @category_baby_kids2_1 = Category.all.where("ancestry LIKE ?", "%/306")
    @category_baby_kids2_2 = Category.all.where("ancestry LIKE ?", "%/318")
    @category_baby_kids2_3 = Category.all.where("ancestry LIKE ?", "%/327")
    @category_baby_kids2_4 = Category.all.where("ancestry LIKE ?", "%/336")
    @category_baby_kids2_5 = Category.all.where("ancestry LIKE ?", "%/351")
    @category_baby_kids2_6 = Category.all.where("ancestry LIKE ?", "%/366")
    @category_baby_kids2_7 = Category.all.where("ancestry LIKE ?", "%/375")
    @category_baby_kids2_8 = Category.all.where("ancestry LIKE ?", "%/381")
    @category_baby_kids2_9 = Category.all.where("ancestry LIKE ?", "%/396")
    @category_baby_kids2_10 = Category.all.where("ancestry LIKE ?", "%/403")
    @category_baby_kids2_11 = Category.all.where("ancestry LIKE ?", "%/408")
    @category_baby_kids2_12 = Category.all.where("ancestry LIKE ?", "%/413")
    @category_baby_kids2_13 = Category.all.where("ancestry LIKE ?", "%/419")
    @category_baby_kids2_14 = Category.all.where("ancestry LIKE ?", "%/427")

    @category_interia = Category.all.where("ancestry LIKE ?", "433")
    @category_interia2_1 = Category.all.where("ancestry LIKE ?", "%/434")
    @category_interia2_2 = Category.all.where("ancestry LIKE ?", "%/446")
    @category_interia2_3 = Category.all.where("ancestry LIKE ?", "%/461")
    @category_interia2_4 = Category.all.where("ancestry LIKE ?", "%/475")
    @category_interia2_5 = Category.all.where("ancestry LIKE ?", "%/485")
    @category_interia2_6 = Category.all.where("ancestry LIKE ?", "%/496")
    @category_interia2_7 = Category.all.where("ancestry LIKE ?", "%/509")
    @category_interia2_8 = Category.all.where("ancestry LIKE ?", "%/516")
    @category_interia2_9 = Category.all.where("ancestry LIKE ?", "%/522")
    @category_interia2_10 = Category.all.where("ancestry LIKE ?", "%/527")
    @category_interia2_11 = Category.all.where("ancestry LIKE ?", "%/532")
    @category_interia2_12 = Category.all.where("ancestry LIKE ?", "%/547")

    @category_book = Category.all.where("ancestry LIKE ?", "563")
    @category_book2_1 = Category.all.where("ancestry LIKE ?", "%/564")
    @category_book2_2 = Category.all.where("ancestry LIKE ?", "%/579")
    @category_book2_3 = Category.all.where("ancestry LIKE ?", "%/587")
    @category_book2_4 = Category.all.where("ancestry LIKE ?", "%/593")
    @category_book2_5 = Category.all.where("ancestry LIKE ?", "%/601")
    @category_book2_6 = Category.all.where("ancestry LIKE ?", "%/611")
    @category_book2_7 = Category.all.where("ancestry LIKE ?", "%/615")
    
    @category_hoby = Category.all.where("ancestry LIKE ?", "622")
    @category_hoby2_1 = Category.all.where("ancestry LIKE ?", "%/623")
    @category_hoby2_2 = Category.all.where("ancestry LIKE ?", "%/634")
    @category_hoby2_3 = Category.all.where("ancestry LIKE ?", "%/640")
    @category_hoby2_4 = Category.all.where("ancestry LIKE ?", "%/649")
    @category_hoby2_5 = Category.all.where("ancestry LIKE ?", "%/664")
    @category_hoby2_6 = Category.all.where("ancestry LIKE ?", "%/673")
    @category_hoby2_7 = Category.all.where("ancestry LIKE ?", "%/688")
    @category_hoby2_8 = Category.all.where("ancestry LIKE ?", "%/695")
    @category_hoby2_9 = Category.all.where("ancestry LIKE ?", "%/699")
    @category_hoby2_10 = Category.all.where("ancestry LIKE ?", "%/710")
    @category_hoby2_11 = Category.all.where("ancestry LIKE ?", "%/714")

    @category_cosme = Category.all.where("ancestry LIKE ?", "729")
    @category_cosme2_1 = Category.all.where("ancestry LIKE ?", "%/730")
    @category_cosme2_2 = Category.all.where("ancestry LIKE ?", "%/740")
    @category_cosme2_3 = Category.all.where("ancestry LIKE ?", "%/755")
    @category_cosme2_4 = Category.all.where("ancestry LIKE ?", "%/765")
    @category_cosme2_5 = Category.all.where("ancestry LIKE ?", "%/771")
    @category_cosme2_6 = Category.all.where("ancestry LIKE ?", "%/786")
    @category_cosme2_7 = Category.all.where("ancestry LIKE ?", "%/795")
    @category_cosme2_8 = Category.all.where("ancestry LIKE ?", "%/805")
    @category_cosme2_9 = Category.all.where("ancestry LIKE ?", "%/809")
    @category_cosme2_10 = Category.all.where("ancestry LIKE ?", "%/816")
    @category_cosme2_11 = Category.all.where("ancestry LIKE ?", "%/822")
    
    @category_electrical_appliance = Category.all.where("ancestry LIKE ?", "827")
    @category_electrical_appliance2_1 = Category.all.where("ancestry LIKE ?", "%/828")
    @category_electrical_appliance2_2 = Category.all.where("ancestry LIKE ?", "%/834")
    @category_electrical_appliance2_3 = Category.all.where("ancestry LIKE ?", "%/843")
    @category_electrical_appliance2_4 = Category.all.where("ancestry LIKE ?", "%/852")
    @category_electrical_appliance2_5 = Category.all.where("ancestry LIKE ?", "%/860")
    @category_electrical_appliance2_6 = Category.all.where("ancestry LIKE ?", "%/869")
    @category_electrical_appliance2_7 = Category.all.where("ancestry LIKE ?", "%/878")
    @category_electrical_appliance2_8 = Category.all.where("ancestry LIKE ?", "%/885")
    @category_electrical_appliance2_9 = Category.all.where("ancestry LIKE ?", "%/899")
    @category_electrical_appliance2_10 = Category.all.where("ancestry LIKE ?", "%/911")

    @category_sports = Category.all.where("ancestry LIKE ?", "913")
    @category_sports2_1 = Category.all.where("ancestry LIKE ?", "%/914")
    @category_sports2_2 = Category.all.where("ancestry LIKE ?", "%/923")
    @category_sports2_3 = Category.all.where("ancestry LIKE ?", "%/930")
    @category_sports2_4 = Category.all.where("ancestry LIKE ?", "%/938")
    @category_sports2_5 = Category.all.where("ancestry LIKE ?", "%/944")
    @category_sports2_6 = Category.all.where("ancestry LIKE ?", "%/955")
    @category_sports2_7 = Category.all.where("ancestry LIKE ?", "%/963")
    @category_sports2_8 = Category.all.where("ancestry LIKE ?", "%/973")
    @category_sports2_9 = Category.all.where("ancestry LIKE ?", "%/985")
    @category_sports2_10 = Category.all.where("ancestry LIKE ?", "%/996")
    @category_sports2_11 = Category.all.where("ancestry LIKE ?", "%/1009")

    @category_hand_made = Category.all.where("ancestry LIKE ?", "1022")
    @category_hand_made2_1 = Category.all.where("ancestry LIKE ?", "%/1023")
    @category_hand_made2_2 = Category.all.where("ancestry LIKE ?", "%/1033")
    @category_hand_made2_3 = Category.all.where("ancestry LIKE ?", "%/1040")
    @category_hand_made2_4 = Category.all.where("ancestry LIKE ?", "%/1045")
    @category_hand_made2_5 = Category.all.where("ancestry LIKE ?", "%/1053")
    @category_hand_made2_6 = Category.all.where("ancestry LIKE ?", "%/1057")
    @category_hand_made2_7= Category.all.where("ancestry LIKE ?", "%/1063")
    @category_hand_made2_8 = Category.all.where("ancestry LIKE ?", "%/1068")
    
    @category_ticket = Category.all.where("ancestry LIKE ?", "1072")
    @category_ticket2_1 = Category.all.where("ancestry LIKE ?", "%/1073")
    @category_ticket2_2 = Category.all.where("ancestry LIKE ?", "%/1082")
    @category_ticket2_3 = Category.all.where("ancestry LIKE ?", "%/1094")
    @category_ticket2_4 = Category.all.where("ancestry LIKE ?", "%/1104")
    @category_ticket2_5 = Category.all.where("ancestry LIKE ?", "%/1109")
    @category_ticket2_6 = Category.all.where("ancestry LIKE ?", "%/1113")
    @category_ticket2_7 = Category.all.where("ancestry LIKE ?", "%/1124")
    
    @category_bicycle = Category.all.where("ancestry LIKE ?", "1131")
    @category_bicycle2_1 = Category.all.where("ancestry LIKE ?", "%/1132")
    @category_bicycle2_2 = Category.all.where("ancestry LIKE ?", "%/1135")
    @category_bicycle2_3 = Category.all.where("ancestry LIKE ?", "%/1140")
    @category_bicycle2_4 = Category.all.where("ancestry LIKE ?", "%/1155")
    @category_bicycle2_5 = Category.all.where("ancestry LIKE ?", "%/1169")
    @category_bicycle2_6 = Category.all.where("ancestry LIKE ?", "%/1184")
    
    @category_etc = Category.all.where("ancestry LIKE ?", "1191")
    @category_etc2_1 = Category.all.where("ancestry LIKE ?", "%/1193")
    @category_etc2_2 = Category.all.where("ancestry LIKE ?", "%/1204")
    @category_etc2_3 = Category.all.where("ancestry LIKE ?", "%/1214")
    @category_etc2_4 = Category.all.where("ancestry LIKE ?", "%/1226")
    @category_etc2_5 = Category.all.where("ancestry LIKE ?", "%/1233")
    @category_etc2_6 = Category.all.where("ancestry LIKE ?", "%/1239")
    @category_etc2_7 = Category.all.where("ancestry LIKE ?", "%/1250")

    @delivery = Delivery.new
    @merchandise = Merchandise.new
    @brand = Brand.new
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
end
