class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :image_url
      t.boolean :visible

      t.timestamps
    end
  end
end
