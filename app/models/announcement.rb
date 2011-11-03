class Announcement < ActiveRecord::Base
  attr_accessible :what, :ann_date, :ann_time, :location, :details, :published
  validates_presence_of :what, :ann_date, :ann_time, :location, :details
  has_friendly_id :what, :use_slug => true

  scope :active, where("published = 1 and ann_date >= curdate()").order("ann_date ASC, ann_time desc")
  scope :inactive, where("published != 1")
  scope :expired, where("published = 1 and ann_date <= curdate()").order("ann_date ASC, ann_time desc")

  def display_ann_date
    ann_date.strftime('%m-%d-%y')
  end

  def display_ann_time
    ann_time.strftime('%l:%M%p')
  end

  def display_date_and_time
    self.display_ann_date + " " + self.display_ann_time
  end

end
