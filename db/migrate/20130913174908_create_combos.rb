class CreateCombos < ActiveRecord::Migration
  def change
    create_table :combos do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :image_url
      t.boolean :visible

      t.timestamps
    end
  end
end
