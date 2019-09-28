class Purchase < ApplicationRecord
  has_one :evaluation, dependent: :destroy
  has_many :to_does, dependent: :destroy
  belongs_to :merchandise
end
