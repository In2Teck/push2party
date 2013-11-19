class Gallery < ActiveRecord::Base
  attr_accessible :name, :visible
  has_many :gallery_images
end
