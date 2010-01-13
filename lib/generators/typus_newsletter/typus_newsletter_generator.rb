class TypusNewsletterGenerator < Rails::Generator::Base

  def manifest

    record do |m|

      # Verify existance of some folders otherwise, create them.
      [ 'app/controllers/admin', 
        'app/views/newsletters', 
        'app/views/newsletter_mailer', 
        'app/views/subscribers', 
        'app/views/subscriber_mailer', 
        'config/typus' ].each do |folder|
        FileUtils.mkdir_p(folder) unless File.exists?(folder)
      end

      # Controllers, helpers, views, initializers and more.
      [ 'app/controllers/admin/newsletters_controller.rb', 
        'app/controllers/newsletters_controller.rb', 
        'app/controllers/subscribers_controller.rb', 
        'app/models/newsletter.rb', 
        'app/models/newsletter_mailer.rb', 
        'app/models/subscriber.rb', 
        'app/models/subscriber_mailer.rb', 
        'app/views/layouts/newsletter.html.erb', 
        'app/views/newsletter_mailer/preview_link.text.plain.erb', 
        'app/views/newsletters/index.html.erb', 
        'app/views/newsletters/preview.html.erb', 
        'app/views/subscriber_mailer/subscribe.text.plain.erb', 
        'app/views/subscriber_mailer/unsubscribe.text.plain.erb', 
        'app/views/subscribers/_form.html.erb', 
        'app/views/subscribers/confirm.html.erb', 
        'app/views/subscribers/new.html.erb', 
        'app/views/subscribers/subscribed.html.erb', 
        'app/views/subscribers/unsubscribe.html.erb', 
        'config/typus/newsletter.yml', 
        'config/typus/newsletter_roles.yml', 
        'doc/README_NEWSLETTER' ].each { |f| m.file f, f }

      # Migration files.
      m.migration_template 'db/create_newsletters', 
                           'db/migrate', { :migration_file_name => 'create_newsletters' }

    end

  end

end