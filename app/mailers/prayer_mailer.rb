class PrayerMailer < ActionMailer::Base
  default :to => "prayer@templetoday.com"

  def prayer_notification(prayer)

    @prayer = prayer
    mail(:from => "#{prayer.name} <#{prayer.email}>", :subject => "[Prayer/Praise form] #{prayer.subject}")

  end
end
