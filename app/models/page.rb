class Page < ActiveRecord::Base
  has_permalink :title, :update => true
  versioned

  def to_param
    permalink
  end
end
