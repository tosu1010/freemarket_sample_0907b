require 'rails_helper'

describe MerchandisesController, type: :controller do
  let(:delivery) { create(:delivery) } 
  let(:brand) { create(:brand) }
  let(:category) { create(:category) }

  describe 'GET #index' do
    it "populates an array of merchandises ordered by created_at DESC" do
      merchandise = create_list(:merchandise, 10, delivery: delivery, brand: brand, category: category,)
      get :index, params: { id: merchandise }
      expect(assigns(:merchandises)).to match(merchandise.sort{|a, b| b.created_at <=> a.created_at })
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it 'DBに登録されている商品の商品詳細のページに遷移できる' do
      merchandise = create(:merchandise, delivery: delivery, brand: brand, category: category)
      get :show, params: { id: merchandise }
      expect(response).to render_template :show
    end

    it 'DBに登録されていない商品の商品詳細ページに遷移しようとした際に、sorryページへ遷移する' do
      merchandise = create(:merchandise, delivery: delivery, brand: brand, category: category)
      get :show, params: { id: merchandise.id + 1 }
      expect(response).to render_template :sorry
    end
  end

end
