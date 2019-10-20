class PersonalInformation < ApplicationRecord
  has_one :remittee, dependent: :destroy
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
