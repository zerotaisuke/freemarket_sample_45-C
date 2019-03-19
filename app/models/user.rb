class User < ApplicationRecord
  has_many :items
  has_one :profile
  accepts_nested_attributes_for :profile
  has_many :items
  has_many :saler_trades, class_name: 'Trade', foreign_key: 'saler_user_id'
  has_many :parcaser_trades, class_name: 'Trade', foreign_key: 'parcaser_user_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i(google_oauth2 facebook)
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
end
