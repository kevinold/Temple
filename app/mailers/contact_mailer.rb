class ContactMailer < ActionMailer::Base
  default :to => "info@templetoday.com"

  def contact_notification(contact)

    @contact = contact
    mail(:from => "#{contact.name} <#{contact.email}>", :subject => "[Contact form] #{contact.subject}")

  end
end
