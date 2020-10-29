class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name_string
      t.references :weapon, foreign_key: true
      t.references :dress, foreign_key: true

      t.timestamps
    end
  end
end
