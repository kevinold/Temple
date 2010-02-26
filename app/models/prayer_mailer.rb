class PrayerMailer < ActionMailer::Base
  
  def prayer_notification(prayer_handler)
    
    @recipients  = "kevin@kevinold.com"
    @from        = prayer_handler.email
    @subject     = "Prayer form: #{prayer_handler.subject}"
    
    @body[:prayer_handler] = prayer_handler
    
  end

end
