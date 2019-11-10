FactoryBot.define do
  factory :purchase do
    association :merchandise
    association :user
  end
end
