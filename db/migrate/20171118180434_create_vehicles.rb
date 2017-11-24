class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :serial_num
      t.string :brand
      t.string :model
      t.string :year
      t.string :color
      t.string :transmission
      t.integer :doors_num
      t.string :fuel
      t.references :concess, foreign_key: true

      t.timestamps
    end
  end
end
