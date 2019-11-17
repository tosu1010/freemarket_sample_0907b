FactoryBot.define do
  factory :delivery do
    shipping_area { ShippingArea.first }
    shipping_charge { ShippingCharge.first }
    shipping_date  { ShippingDate.first }
    delivery_type_id  { "1" }
  end
end
