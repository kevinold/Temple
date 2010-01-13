class Page < ActiveRecord::Base

  validates_presence_of :title, :permalink
  validates_uniqueness_of :permalink

  named_scope :published, :conditions => { :status => true }

  def to_param
    permalink
  end

end