FactoryBot.define do

  factory :trade do
    status                    "未成約"
    item
    association :parcaser_user, factory: :user, email: Faker::Internet.free_email
    association :saler_user, factory: :user, email: Faker::Internet.free_email

  end
end
