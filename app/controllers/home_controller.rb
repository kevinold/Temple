class HomeController < ApplicationController
  current_tab :home
  def index
    @next_wednesday = view_context.next_wednesday.to_s
    @show_sidebar = 1
    @sermons = Sermon.all :conditions => { :published => 1 }, :order => "date DESC", :limit => 5
    @announcements = Announcement.where("published = 1 and ann_date >= curdate()")
                                 .order("ann_date ASC, ann_time desc")
                                 .limit(10)
    @wed_night_meal = WedNightMeal.where("date <= ?", @next_wednesday).order("date desc").first
    @happening = Happening.order("updated_at desc").first
  end

end
