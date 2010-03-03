class PrayerMailer < ActionMailer::Base
  
  def prayer_notification(prayer_handler)

    @recipients  = "prayer@templetoday.com"
    @name        = prayer_handler.name
    @from        = prayer_handler.email
    @subject     = "[Prayer/Praise form] #{prayer_handler.subject}"
    @add_to_bulletin = prayer_handler.add_to_bulletin
    
    @body[:prayer_handler] = prayer_handler
    
  end

end
