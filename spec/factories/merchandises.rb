FactoryBot.define do
  factory :merchandise do
    name          {"テスト商品"}
    description   {"テスト説明"}
    price         { Faker::Number.within(range: 1..999999999) .to_i }
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    condition_id  { "1" }
  end
end
