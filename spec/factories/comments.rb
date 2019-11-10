FactoryBot.define do
  factory :comment do
    association :user
    association :merchandise
    comment {'hello'}
    # user_id {1}
    # merchandise_id {[*1..10].sample}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
