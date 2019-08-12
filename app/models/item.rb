class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependant: :destroy
  has_many :amenities, through: :item_amenities
  has_one :photo, dependant: :destroy

  validates :address, :capacity, :price, :description, :name, :lat, :lng, presence: true
end
