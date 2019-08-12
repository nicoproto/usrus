class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :address
      t.integer :capacity
      t.decimal :price
      t.string :description
      t.string :name
      t.float :lat
      t.float :lng
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
