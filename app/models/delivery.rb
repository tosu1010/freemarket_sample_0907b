class Delivery < ApplicationRecord
  belongs_to_active_hash :shipping_charge
  belongs_to_active_hash :delivery_type_name
  belongs_to_active_hash :shipping_date
  belongs_to_active_hash :shipping_area
end
