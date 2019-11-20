class SignupController < ApplicationController

  before_action :validates_step1, only: :step2
  before_action :validates_step2, only: :step3
  before_action :validates_step3, only: :step4


  def index
  end

  def step1
    @user = User.new

  end

  def step2
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:last_name_kana] = user_params[:last_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
    session[:birth_year] = user_params[:birth_year]
    session[:birth_month] = user_params[:birth_month]
    session[:birth_day] = user_params[:birth_day]

    redirect_to step1_signup_index_path unless verify_recaptcha(model: @user)

    @user = User.new
  end

  def step3
    session[:phone_number] = user_params[:phone_number]
    @address = Address.new
  end

  def step4
    session[:last_name_address] = address_params[:last_name]
    session[:first_name_address] = address_params[:first_name]
    session[:last_name_kana_address] = address_params[:last_name_kana]
    session[:first_name_kana_address] = address_params[:first_name_kana]
    session[:prefecture_id] = address_params[:prefecture_id]
    session[:postal_code] = address_params[:postal_code]
    session[:city] = address_params[:city]
    session[:number] = address_params[:number]
    session[:building] = address_params[:building]
    session[:phone_number_address] = address_params[:phone_number]
  end

  def step5
    # TODO トランザクションを使ってDBへの保存を管理

    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day],
      phone_number: session[:phone_number]
    )
    if @user.save
      session[:id] = @user.id

      @address = Address.new(
        last_name: session[:last_name_address],
        first_name: session[:first_name_address],
        last_name_kana: session[:last_name_kana_address],
        first_name_kana: session[:first_name_kana_address],
        postal_code: session[:postal_code],
        prefecture_id: session[:prefecture_id],
        city: session[:city],
        number: session[:number],
        building: session[:building],
        phone_number: session[:phone_number_address],
        user_id: session[:id]
      )
      binding.pry
      @credit_card = CreditCard.get_new_credit_card(@user, params['payjp-token'])
      
      render 'step5' unless @credit_card.save || @address.save

    else
      render '/devise/registrations/sign_up_before'
    end

    sign_in User.find(session[:id]) unless user_signed_in?
  end


# バリデーション
  def validates_step1
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:last_name_kana] = user_params[:last_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
    session[:birth_year] = user_params[:birth_year]
    session[:birth_month] = user_params[:birth_month]
    session[:birth_day] = user_params[:birth_day]

    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day]
    )

    render '/signup/step1' unless @user.valid?(:validates_step1)
  end


  def validates_step2
    session[:phone_number] = user_params[:phone_number]

    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birth_year: session[:birth_year],
      birth_month: session[:birth_month],
      birth_day: session[:birth_day],
      phone_number: session[:phone_number]
    )

    render '/signup/step2' unless @user.valid?(:validates_step2)
  end


  def validates_step3
    session[:last_name_address] = address_params[:last_name]
    session[:first_name_address] = address_params[:first_name]
    session[:last_name_kana_address] = address_params[:last_name_kana]
    session[:first_name_kana_address] = address_params[:first_name_kana]
    session[:prefecture_id] = address_params[:prefecture_id]
    session[:postal_code] = address_params[:postal_code]
    session[:city] = address_params[:city]
    session[:number] = address_params[:number]
    session[:building] = address_params[:building]
    session[:phone_number_address] = address_params[:phone_number]

    @address = Address.new(
      last_name: session[:last_name_address],
      first_name: session[:first_name_address],
      last_name_kana: session[:last_name_kana_address],
      first_name_kana: session[:first_name_kana_address],
      postal_code: session[:postal_code],
      prefecture_id: session[:prefecture_id],
      city: session[:city],
      number: session[:number],
      building: session[:building],
      phone_number: session[:phone_number_address]
    )

    render '/signup/step3' unless @address.valid?(:validates_step3)
  end


  private
  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :password,
      :password_confirmation,
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :birth_year,
      :birth_month,
      :birth_day,
      :phone_number
    )
  end

  def address_params
    params.require(:address).permit(
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :postal_code,
      :prefecture_id,
      :city,
      :number,
      :building,
      :phone_number
    )
  end

  

end
