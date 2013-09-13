class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.string :description
      t.string :image_url
      t.integer :gallery_id
      t.boolean :visible

      t.timestamps
    end
  end
end
