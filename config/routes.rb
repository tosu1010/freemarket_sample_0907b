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
  resources :merchandises, only: [:index, :show] do
    resources :comments, only: [:create, :new]
    resources :likes, only: [:create, :destroy]
    resources :purchase, only: [:index, :create]
  end
  resources :exhibit, only: [:index]

  get '/mypage/profile' => 'mypage#edit'
  get '/mypage/identification' => 'personal_information#new'
  post '/mypage' => 'personal_information#create'
  get '/mypage/identifications' => 'personal_information#edit'
  patch '/mypage' => 'personal_information#update'
  get '/mypage/card' => 'mypage#show'
  get '/mypage/card/create' => 'mypage#card'
  patch '/mypage' => 'mypage#update'

  get '/logout' => 'logout#log_out'
  
end