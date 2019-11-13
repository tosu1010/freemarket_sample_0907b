FactoryBot.define do
  factory :exhibit_image do
    association :exhibit
    image {'https://placehold.jp/320x150.png'}
    exhibit_id {[*1..10].sample}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
