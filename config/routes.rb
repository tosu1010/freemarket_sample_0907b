Rails.application.routes.draw do
  devise_for :users

  root 'merchandises#index'

  resources :signup do
    collection do
      get 'step1'
      post 'step2'
      post 'step3'
      post 'step4'
      post 'step5'
    end
  end

  resources :mypage, only: [:index]
  resources :merchandises, only: [:index, :show]
  resources :exhibit, only: [:index]

  get '/mypage/profile', to: 'mypage#edit'
  get '/mypage/identification', to: 'mypage#new'
  get '/mypage/card', to: 'mypage#show'
  get '/mypage/card/create', to: 'mypage#create'
end