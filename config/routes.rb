Rails.application.routes.draw do
  devise_for :users
  root 'merchandises#index'
  resources :merchandises
end