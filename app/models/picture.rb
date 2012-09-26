class Picture < ActiveRecord::Base
  attr_accessible :image, :title

  mount_uploader :image, PictureUploader
end
