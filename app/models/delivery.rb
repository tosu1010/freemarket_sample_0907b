class Delivery < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :shipping_charge
  belongs_to_active_hash :delivery_type
  belongs_to_active_hash :shipping_date
  belongs_to_active_hash :shipping_area
end
