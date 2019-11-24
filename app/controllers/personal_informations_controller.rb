class PersonalInformationsController < ApplicationController

  before_action :move_to_root_path

  def new
    @personal_information = PersonalInformation.new
  end

  def create
    @personal_information = PersonalInformation.new(personal_information_params)

    if @personal_information.save
      redirect_to mypage_index_path
    else
      redirect_to new_personal_information_path
    end
  end

  def edit
    @personal_information = find_personal_information_by_id
  end

  def update

    if PersonalInformation.update(personal_information_params)
      redirect_to mypage_index_path
    else
      redirect_to edit_personal_information_path
    end
    
  end
  
  private

  def personal_information_params
    params.require(:personal_information).permit(:postal_code, :prefecture_id, :city, :number, :building).merge(user_id: current_user.id)
  end

  def find_personal_information_by_id
    PersonalInformation.find_by(user_id: params[:id])
  end

  def move_to_root_path
    redirect_to root_path unless user_signed_in?
  end
end
