FactoryBot.define do
  factory :purchase_destination do
    post_code { '123-4567' }
    area_id { 1 }
    city { '名古屋市' }
    address { '葵１−１' }
    building_name { '葵ハイツ' }
    phone_number { '09012345678' }
  end
end
