class RemoveCapacityFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :capacity, :integer
  end
end
