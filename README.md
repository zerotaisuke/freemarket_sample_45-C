## userテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|
|nickname|string|null: false|
|password|string|null: false,unique|
|birthdate|DATE|null: false|
|postal_code|integer|null: false|
|email-address|string|null: false,unique|
|region_id|string|null: false,foreign_key: true|
|municipality|string|
|block|string|
|evaluation|string|null: false|
|sales_money|integer|null: false|
|point|integer|null: false|
|payment_methods|string|null: false|
|Facebook|integer|
|Twitter|integer|
|Gmail|integer|

### Association
- has_many :items
- has_many :item-comments
- has_many :regions
- has_one :trade
- has_one :saler_user
- has_one :perchaser_user


## itemテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|
|image|string|null: false|
|status|string|null: false|
|item_status|string|null: false|
|price|integer|null: false|
|delivery_charge_burden|string|null: false|
|days_up_to_delivery|string|null: false|
|region_id|string|null: false,foreign_key: true|
|user_id|integer|null: false,foreign_key: true|
|category_id|string|null: false,foreign_key: true|
|perchaser_user_id|integer|null: false,foreign_key: true|
|saler_user_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- has_many   :regions
- has_many   :item_comments


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
|user_id|integer|null: false|
|item_id|integer|null: false|

### Association
- belongs_tp:users
- belongs_to:item

## tradeテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|status|string|null: false|
|parcaser_evaluation|integer|null: false|
|saler_evaluation|integer|null: false|
|parcaser_user_id|integer|null: false,foreign_key: true|
|saler_user_id|integer|null: false,foreign_key: true|
|item_id|integer|null: false,foreign_key: true|

### Association
- has_one  :user
- has_one  :item
- has_one  :saler_user
- has_one  :percaser_user
- has_many :trade_comments

## saler_userテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false,foreign_key: true|
|trade_id|integer|null: false,foreign_key: true|
|temporary_sales_money|integer|null: false|
|name|string|null: false|

### Association
- has_one :user
- has_one :trade
- has_many:trade_comments

## percaser_userテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false,foreign_key: true|
|trade_id|integer|null: false,foreign_key: true|
|name|string|null: false|

### Association
- has_one :user
- has_one :trade
- has_many:trade_comments

## trade_commentテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|content|string|null: false|
|trade_id|integer|null: false,foreign_key: true|

### Association
- belongs_to :trade
- belongs_to :saler_user
- belongs_to :percaser_user

## regionテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false,unique|

### Association
- belongs_to :user
- belongs_to :item

## brandテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|

### Association
- has_many :items
