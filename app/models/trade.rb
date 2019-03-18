class Trade < ApplicationRecord
  belongs_to :item
  belongs_to :parcaser_user, class_name: 'User', foreign_key: 'parcaser_user_id'
  belongs_to :saler_user, class_name: 'User', foreign_key: 'saler_user_id'
end
