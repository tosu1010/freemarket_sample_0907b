Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'log_in' => 'login#log_in'
  get 'sign_up_before' => 'signup#sign_up_before'
  get 'sign_up_2' => 'signup#sign_up_2'
  get 'sign_up_3' => 'signup#sign_up_3'
  get 'sign_up_4' => 'signup#sign_up_4'
  get 'sign_up_5' => 'signup#sign_up_5'
  get 'sign_up_6' => 'signup#sign_up_6'




  

end