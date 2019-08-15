class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :amenities, through: :item_amenities
  # has_one :photo, dependent: :destroy

  validates :address, :price, :description, :name, :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
