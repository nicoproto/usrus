class ChangeColumnNameInItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :lat, :latitude
    rename_column :items, :lng, :longitude
  end
end
