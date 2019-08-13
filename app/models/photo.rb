class Photo < ApplicationRecord
  belongs_to :item
  validates :data, presence: true
end
