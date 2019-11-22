class PersonalInformationController < ApplicationController

  before_action :move_to_root_path

  def new
    @user = User.find(current_user.id)
    @personal_information = PersonalInformation.new
  end

  def create
    @personal_information = PersonalInformation.create(personal_information_params)
    redirect_to mypage_identification_path
  end

  def edit
  end

  def update
    @personal_information = PersonalInformation.update(personal_information_params)
    redirect_to mypage_identification_path
  end
  
  private

  def personal_information_params
    params.require(:personal_information).permit(:postal_code, :prefecture_id, :city, :number, :building).merge(user_id: current_user.id)
  end

  def move_to_root_path
    redirect_to root_path unless user_signed_in?
  end
end
