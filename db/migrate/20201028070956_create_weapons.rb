class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.integer :no
      t.string :name
      t.string :img
      t.string :weapon_type
      t.string :category
      t.string :rarity
      t.integer :max_lvl
      t.string :element
      t.integer :max_atck
      t.integer :max_bullet
      t.string :skl_1
      t.string :skl_1_element
      t.text :skl_1_detail
      t.string :skl_2
      t.string :skl_2_element
      t.text :skl_2_detail
      t.string :kakusei

      t.timestamps
    end
  end
end
