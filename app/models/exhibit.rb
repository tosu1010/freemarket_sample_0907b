class Exhibit < ApplicationRecord
  has_many :to_does, dependent: :destroy
  has_many :exhibit_images, dependent: :destroy
  belongs_to :user
  belongs_to :merchandise

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :size
end
