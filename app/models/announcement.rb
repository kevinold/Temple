class Announcement < ActiveRecord::Base
  attr_accessible :what, :ann_date, :ann_time, :location, :details, :published

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
