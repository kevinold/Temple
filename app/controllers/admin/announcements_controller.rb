class Admin::AnnouncementsController < ApplicationController

  before_filter :require_user
  layout 'admin'

  def index
    @active = Announcement.all :conditions => { :published => 1 }, :order => "ann_date DESC"
    @inactive = Announcement.all :conditions => { :published => 0 }, :order => "ann_date DESC"
    p @inactive
  end
  
  def show
    @announcement = Announcement.find(params[:id])
  end
  
  def new
    @announcement = Announcement.new(:ann_date => Time.now, :ann_time => Time.now)
  end
  
  def create
    @announcement = Announcement.new(params[:announcement])
    if @announcement.save
      flash[:notice] = "Successfully created announcement."
      redirect_to([:admin, @announcement])
    else
      render :action => 'new'
    end
  end
  
  def edit
    @announcement = Announcement.find(params[:id])
  end
  
  def update
    @announcement = Announcement.find(params[:id])
    if @announcement.update_attributes(params[:announcement])
      flash[:notice] = "Successfully updated announcement."
      redirect_to([:admin, @announcement])
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy
    flash[:notice] = "Successfully destroyed announcement."
    redirect_to admin_announcements_url
  end
end
