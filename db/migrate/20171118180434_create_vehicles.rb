class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :model
      t.string :color
      t.references :concess, foreign_key: true

      t.timestamps
    end
  end
end
