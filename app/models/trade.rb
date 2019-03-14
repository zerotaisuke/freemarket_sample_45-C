class Trade < ApplicationRecord
  belongs_to :item
  belongs_to :parcaser_user, class_name: 'User'
  belongs_to :saler_user, class_name: 'User'
end
