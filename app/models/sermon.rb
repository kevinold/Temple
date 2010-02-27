class Sermon < ActiveRecord::Base
  has_permalink :title, :update => true

  def to_param
    permalink
  end
end
