FactoryBot.define do

  factory :profile do
    name                  {"メルカリ太郎"}
    nickname              {"メル太"}
    birthdate             {"20000101"}
    postal_code           {"333-3333"}
    prefecture            {"大阪府"}
    municipality          {"大阪市"}
    block                 {"心斎橋1-1-1"}
    user
  end

end
