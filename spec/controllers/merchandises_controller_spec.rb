require 'rails_helper'

# describe MerchandisesController do
#   describe 'GET #index' do
#     it "インスタンス変数は期待した値になるか？" do
# 　　"擬似的にリクエストを行ったことにするコードを書く"
#       "エクスペクテーションを書く"
#     end

#     it "期待するビューに遷移するか？" do
#       "擬似的にリクエストを行ったことにするコードを書く"
#       "エクスペクテーションを書く"
#     end
#   end


describe MerchandisesController do
  describe 'GET #index' do
    it "populates an array of merchandises ordered by created_at DESC" do
      merchandises = create_list(:merchandises, 10) 
      get :index
      expect(assigns(:merchandises)).to match(merchandises.sort{ |a, b| b.created_at <=> a.created_at } )
 
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end
end