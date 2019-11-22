FactoryBot.define do
  factory :address do

    first_name            {Faker::Name.first_name}
    last_name             {Faker::Name.last_name}
    first_name_kana       {Faker::Name.first_name}
    last_name_kana        {Faker::Name.last_name}
    postal_code           {"111-1111"}
    prefecture_id         {1}
    city                  {Faker::Address.city}
    number                {"1-11"}
    building              {Faker::Address.community}
    phone_number          {Random.rand(1111111111..9999999999)}
    created_at            { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
