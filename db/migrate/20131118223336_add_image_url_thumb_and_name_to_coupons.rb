class AddImageUrlThumbAndNameToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :image_url_thumb, :string
    add_column :coupons, :name, :string
  end
end
