class ContactMailer < ActionMailer::Base
  
  def contact_notification(contact_handler)
    
    @recipients  = "info@templetoday.com"
    @from        = contact_handler.email
    @name        = contact_handler.name
    @subject     = "[Contact form] #{contact_handler.subject}"
    
    @body[:contact_handler] = contact_handler
    
  end

end
