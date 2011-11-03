class AnnouncementsController < ApplicationController
  def index
    @announcements = Announcement.where("published = 1 and ann_date >= curdate() and ann_time >= curtime()")
                                 .order("ann_date ASC, ann_time desc")
                                 .limit(50)
  end
  
  def show
    @announcement = Announcement.find(params[:id])
  end
  
end
