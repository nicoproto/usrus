class User < ApplicationRecord
  has_many :bookings, dependant: :destroy
  has_many :items, dependant: :destroy
  validates :first_name, :last_name, :avatar, :email, :phone, presence: true
end
