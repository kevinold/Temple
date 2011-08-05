class Happenings < ActiveRecord::Base
  attr_accessible :name, :image, :details
  mount_uploader :image, ImageUploader
end
