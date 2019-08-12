class CreateItemAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :item_amenities do |t|
      t.references :item, foreign_key: true
      t.references :amenity, foreign_key: true

      t.timestamps
    end
  end
end
