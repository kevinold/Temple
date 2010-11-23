class HomeController < ApplicationController
  current_tab :home
  def index
    @show_sidebar = 1
    @sermons = Sermon.all :conditions => { :published => 1 }, :order => "date DESC", :limit => 5
    @announcements = Announcement.all :conditions => { :published => 1 }, :order => "announcement_date ASC", :limit => 5
  end

end
