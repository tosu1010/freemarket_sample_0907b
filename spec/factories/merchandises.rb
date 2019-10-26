# FactoryBot.define do
#   factory :merchandise do
    
#   end
# end


# FactoryBot.define do
#   factory :user do
#     nickname              {"abe"}
#     password              {"00000000"}
#     password_confirmation {"00000000"}
#     sequence(:email) {Faker::Internet.email}
#   end
# end

FactoryBot.define do
  factory :merchandises do
    name {Faker::Name.name}
    description {"aaaaaaaaaa"}
    price {"4000"}

    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end