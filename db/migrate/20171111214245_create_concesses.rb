class CreateConcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :concesses do |t|
      t.string :name
      t.integer :aprox_num
      t.string :address
      t.string :contact_number
      t.string :cars_type
      t.boolean :warranty
      t.date :open_time
      t.date :close_time

      t.timestamps
    end
  end
end
