Rails.application.routes.draw do
  devise_for :users
  root 'merchandises#index'
  resources :mypage, only: [:index]
  resources :merchandises
  get '/mypage/profile', to: 'mypage#edit'
end