class Item < ApplicationRecord
  has_one_attached :avatar
  has_one :trade
  belongs_to :user

  validates :avatar,                  presence: true
  validates :name,                    presence: true
  validates :status,                  presence: true

  validates :price,                   numericality: {
                                       only_integer: true,
                                       greater_than: 0,
                                       less_than: 1000000 }
  validates :delivery_charge_burden,  presence: true
  validates :days_up_to_delivery,     presence: true
  validates :prefecture,              presence: true
  validates :description,             presence: true

end
