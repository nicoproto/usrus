class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :amenities, :attribute, :description
  end
end
