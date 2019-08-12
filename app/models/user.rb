class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :items, dependent: :destroy
  validates :first_name, :last_name, :avatar, :email, :phone, presence: true
end
