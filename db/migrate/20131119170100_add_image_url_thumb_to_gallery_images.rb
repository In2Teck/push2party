class AddImageUrlThumbToGalleryImages < ActiveRecord::Migration
  def change
    add_column :gallery_images, :image_url_thumb, :string
  end
end
