FactoryBot.define do
  factory :exhibit do
    association :user
    association :merchandise
    status {1}
    size_id {[*1..10].sample}
    user_id {1}
    merchandise_id {[*1..10].sample}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
