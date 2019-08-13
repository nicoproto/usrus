class Amenity < ApplicationRecord
  has_many :item_amenities
  validates :description, presence: true
end
