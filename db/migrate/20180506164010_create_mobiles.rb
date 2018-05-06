class CreateMobiles < ActiveRecord::Migration[5.2]
  def change
    create_table :mobiles do |t|
      t.string :name
      t.string :brand
      t.string :year_released
      t.string :camera
      t.string :mpixel
      t.integer :internalstorage
      t.integer :simslots
      t.string :screen_size
      t.string :os
      t.integer :stock_num

      t.timestamps
    end
  end
end
