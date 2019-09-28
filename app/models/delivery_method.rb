class DeliveryMethod < ApplicationRecord
  has_one :delivery, dependent: :destroy
end
