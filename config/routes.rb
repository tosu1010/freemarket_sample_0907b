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
  post '/mypage/identification' => 'personal_information#create'
  patch '/mypage/identification' => 'personal_information#create'
  get '/mypage/card' => 'mypage#show'
  get '/mypage/card/create' => 'mypage#create'
  patch '/mypage' => 'mypage#update'

  get '/logout' => 'logout#log_out'
  
end