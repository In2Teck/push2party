class Item < ActiveRecord::Base
  attr_accessible :description, :name, :parent_id, :price, :visible, :priority
end
