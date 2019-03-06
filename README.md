## userテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|password|string|null: false,unique|
|email-address|string|null: false,unique|

### Association
- has_many :items
- has_many :item-comments
- has_one  :profile
- has_one  :saler_user
- has_one  :perchaser_user

## profileテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|references|null: false,foreign_key: true|
|name|string|null: false|
|nickname|string|null: false|
|birthdate|DATE|null: false|
|postal_code|integer|null: false|
|prefecture|string|null: false|
|municipality|string|
|block|string|
|good_evaluation|integer|null: false|
|normal_evaluation|integer|null: false|
|bad_evaluation|integer|null: false|
|sales_money|integer|null: false|
|mercari-point|integer|null: false|
|payment_methods|string|null: false|

### Association
- belongs_to :users


## itemテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|
|image|string|null: false|
|detail|string|null: false|
|status|string|null: false|
|item_status|string|null: false|
|price|integer|null: false|
|delivery_charge_burden|string|null: false|
|days_up_to_delivery|string|null: false|
|prefecture|string|null: false|
|category_id|references|null: false,foreign_key: true|
|brand_id|references|foreign_key: true|
|user_id|references|null: false,foreign_key: true|

### Association
- belongs_to :category
- belongs_to :brand
- belongs_to :user
- has_many   :item_comments
- has_one    :trade


## categoryテーブル

|Column|Type|Options|
|------|----|-------|
|parrent_id|integer|null: false|
|name|string|null: false|

### Association
- has_many :items


## item_commentテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|content|string|null: false|
|user_id|references|null: false|
|item_id|references|null: false|

### Association
- belongs_to:user
- belongs_to:item

## tradeテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|status|string|null: false|
|parcaser_evaluation|integer|null: false|
|saler_evaluation|integer|null: false|
|item_id|references|null: false,foreign_key: true|

### Association
- belongs_to  :item
- has_one     :saler_user
- has_one     :percaser_user
- has_many    :trade_comments

## saler_userテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false,foreign_key: true|
|trade_id|references|null: false,foreign_key: true|
|temporary_sales_money|integer|null: false|

### Association
- belongs_to :user
- belongs_to :trade
- has_many   :trade_comments

## percaser_userテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false,foreign_key: true|
|trade_id|references|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :trade
- has_many   :trade_comments

## trade_commentテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|content|string|null: false|
|trade_id|references|null: false,foreign_key: true|
|saler_user_id|references|null: false,foreign_key: true|
|percaser_user_id|null: false,foreign_key: true|

### Association
- belongs_to :trade
- belongs_to :saler_user
- belongs_to :percaser_user

## brandテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|

### Association
- has_many :items
