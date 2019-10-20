class PersonalInformation < ApplicationRecord
  has_one :remittee, dependent: :destroy
  belongs_to :user
end
