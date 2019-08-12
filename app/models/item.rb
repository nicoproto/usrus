class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :amenities, through: :item_amenities
  has_one :photo, dependent: :destroy

  validates :address, :capacity, :price, :description, :name, :lat, :lng, presence: true
end
