class TypusMailer < ActionMailer::Base

  def file(recipients, subject, body, url, filename)
    @subject    = subject
    @recipients = recipients
    @from       = TYPUS_AWS_S3[:from]
    @sent_on    = Time.now
    @headers    = {}
    body(:body => body, :url => url, :filename => filename)
  end

end