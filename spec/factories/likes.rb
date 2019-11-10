FactoryBot.define do
  factory :like do
    association :user
    association :merchandise
    value {1}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
