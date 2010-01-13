class SubscriberMailer < ActionMailer::Base

  # User has to confirm this email to be subscribed.
  def subscribe(user)
    @subject = "Please confirm your subscription to the newsletter"
    @body = { :user => user }
    @recipients = user.email
    @from = "do-not-reply@example.com"
    @sent_on = Time.now
    @headers = {}
  end

  # Email user receives when it's unsubscribed.
  def unsubscribe(user)
    @subject = "You've been successfully unsubscribed"
    @body = { :user => user }
    @recipients = "#{user.name} <#{user.email}>"
    @from = "do-not-reply@example.com"
    @sent_on = Time.now
    @headers = {}
  end

end