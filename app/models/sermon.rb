class Sermon < ActiveRecord::Base
  attr_accessible :title, :description, :podcast_filename, :video_filename, :published
end
