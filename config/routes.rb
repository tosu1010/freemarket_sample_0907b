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
  resources :credit_card, only: [:create]
  resources :merchandises, only: [:index, :show] do
    resources :comments, only: [:create, :new]
    resources :likes, only: [:create, :destroy]
    resources :purchase, only: [:index, :create]
  end
  resources :exhibit, only: [:index, :create, :show, :destroy]

  get '/mypage/profile' => 'mypage#edit'
  get '/mypage/identification' => 'mypage#new'
  get '/mypage/card' => 'mypage#show'
  get '/mypage/card/create' => 'mypage#create'

  get '/logout' => 'logout#log_out'
  
end