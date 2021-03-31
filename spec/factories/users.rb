FactoryBot.define do
  factory :user do
    nickname {Faker::Name.initials(number: 4)}
    email {Faker::Internet.free_email}
    password {'abc123'}
    password_confirmation {password}
    first_name {'太郎'}
    family_name {'田中'}
    first_name_kana {'タロウ'}
    family_name_kana {'タナカ'}
    birth_day {1999-12-12}
  end
end