FactoryBot.define do
  factory :item do
    image {Faker::Lorem.sentence}
    name {'タイトル'}
    description {Faker::Lorem.sentence}
    category_id {'2'}
    status_id {'2'}
    shipping_cost_id {'3'}
    area_id {'10'}
    shipping_days_id {'3'}
    price {'1000'}
    association :user
  end
end
