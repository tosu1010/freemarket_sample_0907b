class ExhibitImage < ApplicationRecord
  belongs_to :exhibit, optional: true

  mount_uploader :image, ImageUploader
end
