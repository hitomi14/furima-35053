FactoryBot.define do
  factory :user do
    nickname {Faker::Name.initials(number: 4)}
    email {Faker::Internet.free_email}
    password {'der234'}
    password_confirmation {password}
    first_name {'花子'}
    family_name {'山田'}
    first_name_kana {'ハナコ'}
    family_name_kana {'ヤマダ'}
    birth_day {'1998-11-11'}
  end
end