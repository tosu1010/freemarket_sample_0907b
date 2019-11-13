FactoryBot.define do
  factory :user do
    first_name         {Faker::Name.first_name}
    last_name          {Faker::Name.last_name}
    first_name_kana    {Faker::Name.first_name}
    last_name_kana     {Faker::Name.last_name}
    nickname           {Faker::Name.initials}
    email              {Faker::Internet.email}
    password           {'000000'}
    birth_year         {Random.rand(1900..2100)}
    birth_month        {Random.rand(1..12)}
    birth_day          {10}
    phone_number       {Faker::PhoneNumber.phone_number}
    profile_description{'こんにちわ！'}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
