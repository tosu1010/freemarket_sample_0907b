class Merchandise < ApplicationRecord
  has_one :balance, dependent: :destroy
  has_one :exhibit, dependent: :destroy
  has_one :purchases, dependent: :destroy
  has_many :to_does, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :dealed_comment, dependent: :destroy
  belongs_to :delivery
  belongs_to :brand
  belongs_to :category
end
