class ItemAmenity < ApplicationRecord
  belongs_to :item
  belongs_to :amenity
end
