class NewsletterMailer < ActionMailer::Base

  def newsletter(newsletter, content, user)
    @subject = newsletter.subject
    @body = content
    @recipients = user.email
    @from = "do-not-reply@example.com"
    @sent_on = Time.now
    @headers = {}
    content_type "text/html"
  end

  def preview_link(newsletter, content)
    @subject = "#{newsletter.subject} (Preview)"
    @body = content
    @recipients = "do-not-reply@example.com"
    @from = "do-not-reply@example.com"
    @sent_on = Time.now
    @headers = {}
  end

end