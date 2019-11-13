FactoryBot.define do
  factory :comment do
    association :user
    association :merchandise
    comment {'hello'}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
