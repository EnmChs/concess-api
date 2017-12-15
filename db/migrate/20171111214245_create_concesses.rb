class CreateConcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :concesses do |t|
      t.string :name
      t.string :description
      t.boolean :warranty
      t.date :open_time

      t.timestamps
    end
  end
end
