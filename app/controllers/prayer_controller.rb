class PrayerController < ApplicationController

  def new
    @prayer_handler = PrayerHandler.new
  end

  def create
    @prayer_handler = PrayerHandler.new(params[:prayer_handler])

    if @prayer_handler.save
      PrayerMailer.deliver_prayer_notification(@prayer_handler)
      flash[:notice] = 'Thanks for your request.  It will be reviewed and mailed to the Prayer Ministry.'
      redirect_to :back
    else
      render :action => "new"
    end
  end
  
end
