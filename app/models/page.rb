class Page < ActiveRecord::Base
  has_friendly_id :title, :use_slug => true
  belongs_to :category

end
