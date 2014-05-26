class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :phone, :subscribed, :gender
end
