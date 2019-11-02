class Delivery < ApplicationRecord
  has_one :delivery_method, dependent: :destroy
end
