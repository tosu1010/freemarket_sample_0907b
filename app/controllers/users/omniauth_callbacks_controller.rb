class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    callback_from :google_oauth2
  end

  def facebook
    callback_from :facebook
  end

  def callback_from(provider)
    provider = provider.to_s

    # 認証情報をoauthに格納する
    session[:oauth] = request.env['omniauth.auth'].except('extra')
    session[:user] = User.find_for_oauth(request.env['omniauth.auth'])
    if session[:user]
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect session[:user], event: :authentication
    else
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_path
    end
  end

  def after_sign_in_path_for(resource)
    if session[:user].id == nil
      step1_signup_index_path
    else
      root_path
    end
  end
end