Rails.application.routes.draw do
  
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

  
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks",
    sessions: "users/sessions"
  }
  
  resources :credit_card, only: [:create]
  resources :merchandises, only: [:index, :show] do
    resources :comments, only: [:create, :new]
    resources :likes, only: [:create, :destroy]
    resources :purchase, only: [:index, :create]
  end

  resources :exhibits, only: [:index, :create, :edit, :update, :show, :destroy] do
    collection do
      get 'get_category_children', defaults: { format: 'json'}
    end
  end

  resources :mypage, only: [:index]
  get '/mypage/profile' => 'mypage#edit'
  get '/mypage/card' => 'mypage#show'
  get '/mypage/card/create' => 'mypage#create'
  patch '/mypage' => 'mypage#update'
  get '/mypage/exhibit_list/list' => 'exhibit_list#list'
  get '/mypage/exhibit_list/dealing' => 'exhibit_list#dealing'
  get '/mypage/exhibit_list/complete' => 'exhibit_list#complete'

  resources :personal_informations, only: [:new, :create, :edit, :update]

  get '/signup' => 'signup#index'
  get '/logout' => 'logout#log_out'

  
end