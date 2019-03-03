FactoryBot.define do

  factory :profile do
    name                  Faker::Name.name
    nickname              Faker::Name.first_name
    birthdate             Faker::Date.birthday.to_s.delete("-")
    postal_code           Faker::Address.postcode
    prefecture            Faker::Address.state
    municipality          Faker::Address.city
    block                 Faker::Address.street_name
    user
  end

end
