class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :personal_information, dependent: :destroy
  has_one :guide, dependent: :destroy
  has_one :credit_card, dependent: :destroy
  has_one :dealed_comment, dependent: :destroy
  has_one :address, dependent: :destroy
  has_many :points, dependent: :destroy
  has_many :notices, dependent: :destroy
  has_many :to_does, dependent: :destroy
  has_many :balances, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :exhibits, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :purchases, dependent: :destroy
  has_many :evaluations, dependent: :destroy

  def get_full_name
    self.first_name + ' ' + self.last_name    
  end
end
