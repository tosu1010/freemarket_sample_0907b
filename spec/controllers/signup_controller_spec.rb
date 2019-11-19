require 'rails_helper'
require 'i18n'

I18n.locale = :en

describe SignupController do

  let(:user) { FactoryBot.create :user }

  describe 'GET #index' do
    it "renders the :index template" do
      get :index, params: { user_id: user }
      expect(response).to render_template :index
    end
  end


  describe 'GET #step1' do
    it 'step1で表示されること' do
      get :step1
      expect(response).to render_template :step1
    end

    it '@userがnewされていること' do
      get :step1
      expect(assigns :user).to_not be_nil
    end
  end

end