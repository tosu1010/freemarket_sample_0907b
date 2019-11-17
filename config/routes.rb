Rails.application.routes.draw do
  devise_for :users
  root 'merchandises#index'

  resources :mypage, only: [:index]
  resources :merchandises, only: [:index, :show] do
    resources :comments, only: [:create, :new]
    resources :likes, only: [:create, :destroy]
    resources :purchase, only: [:index, :create]
  end
  resources :exhibit, only: [:index]

  get '/mypage/profile' => 'mypage#edit'
  get '/mypage/identification' => 'mypage#new'
  get '/mypage/card' => 'mypage#show'
  get '/mypage/card/create' => 'mypage#create'

  get 'log_in' => 'login#log_in'
  get 'sign_up_before' => 'signup#sign_up_before'
  get 'sign_up_2' => 'signup#sign_up_2'
  get 'sign_up_3' => 'signup#sign_up_3'
  get 'sign_up_4' => 'signup#sign_up_4'
  get 'sign_up_5' => 'signup#sign_up_5'
  get 'sign_up_6' => 'signup#sign_up_6'
  get 'logout' => 'logout#log_out'
  
end