class Place < ActiveRecord::Base
  attr_accessible :city, :description, :photo_detail, :user, :image

has_attached_file :image

end
