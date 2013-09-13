class GalleryImage < ActiveRecord::Base
  attr_accessible :description, :gallery_id, :image_url, :visible
end
