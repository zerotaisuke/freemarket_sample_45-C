class Profile < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { maximum: 20 }
  validates :nickname, presence: true, length: { maximum: 20 }
  validates :birthdate, presence: true
  validates :postal_code, presence: true
  validates :municipality, presence: true
end
