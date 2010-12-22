class HomeController < ApplicationController
  current_tab :home
  def index
    @show_sidebar = 1
    @sermons = Sermon.all :conditions => { :published => 1 }, :order => "date DESC", :limit => 5
    @announcements = Announcement.all :conditions => { :published => 1 }, :order => "ann_date ASC, ann_time desc", :limit => 10
  end

end
