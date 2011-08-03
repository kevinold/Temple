ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :port => 587,
  :user_name => 'noreply@templetoday.com',
  :password => 'NoPassword316',
  :authentication => :plain,
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"
require 'development_mail_interceptor'
Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
