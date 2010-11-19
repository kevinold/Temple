class Announcement < ActiveRecord::Base
  attr_accessible :what, :announcement_date, :location, :details, :published

  def display_annoucement_date
    announcement_date.strftime('%m-%d-%y')
  end
end
