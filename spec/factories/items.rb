FactoryBot.define do
  factory :item do
    name {'タイトル'}
    description {Faker::Lorem.sentence}
    category_id {'2'}
    status_id {'2'}
    shipping_cost_id {'3'}
    area_id {'10'}
    shipping_days_id {'3'}
    price {'1000'}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
