FactoryBot.define do

 factory :item do
   name                     Faker::Commerce.product_name
   status                   ["新品、未使用", "未使用に近い", "目立った傷や汚れなし","やや傷や汚れあり","傷や汚れあり","全体的に状態が悪い"].sample
   price                    [*1..1000000].sample
   delivery_charge_burden   ["送料込み(出品者負担)", "着払い(購入者負担)"].sample
   days_up_to_delivery      ["---","1〜2日で発送","2〜3日で発送","4〜7日で発送"].sample
   prefecture                Faker::Address.state
   description               Faker::JapaneseMedia::DragonBall.character + "が手作りした" + Faker::Movie.quote
   user
 end

end