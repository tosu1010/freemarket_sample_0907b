FactoryBot.define do
  factory :user do

    id                    {Random.rand(1..1000)}
    first_name            {Faker::Name.first_name}
    last_name             {Faker::Name.last_name}
    first_name_kana       {Faker::Name.first_name}
    last_name_kana        {Faker::Name.last_name}
    nickname              {Faker::Name.initials(number: 7)}
    email                 {Faker::Internet.email}
    password              {1111111}
    password_confirmation {1111111}
    birth_year            {Random.rand(1900..2100)}
    birth_month           {Random.rand(1..12)}
    birth_day             {Random.rand(1..28)}
    phone_number          {Random.rand(1111111111..9999999999)}
    profile_description   {Faker::Lorem.sentence}
    created_at            { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end