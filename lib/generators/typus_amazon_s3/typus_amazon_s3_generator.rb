class TypusAmazonS3Generator < Rails::Generator::Base

  def manifest

    record do |m|

      # Verify existance of some folders otherwise, create them.
      [ 'app/controllers/admin', 
        'app/helpers/admin', 
        'app/views/admin/amazon_s3', 
        'app/views/typus_mailer', 
        'config/typus', 
        'public/images/admin/amazon_s3' ].each do |folder|
        FileUtils.mkdir_p(folder) unless File.exists?(folder)
      end

      # Controllers, helpers, views, initializers and more.
      [ 'app/models/typus_mailer.rb', 
        'app/controllers/admin/amazon_s3_controller.rb', 
        'app/helpers/admin/amazon_s3_helper.rb', 
        'app/views/typus_mailer/file.erb', 
        'config/initializers/typus_amazon_s3.rb', 
        'config/typus/amazon_s3_roles.yml', 
        'doc/README_AMAZON_S3', 
        'lib/typus_amazon_s3_routes.rb', 
        'public/stylesheets/admin/amazon_s3.css' ].each { |f| m.file f, f }

      # Views
      %w( _bucket _file _spacer edit_file index new share_file show ).each do |file|
        from = to = "app/views/admin/amazon_s3/#{file}.html.erb"
        m.file from, to
      end

      # Stylesheets & images.
      %w( audio bucket document image keynote package spreadsheet trash unknown video ).each do |file|
        from = to = "public/images/admin/amazon_s3/#{file}.png"
        m.file from, to
      end

    end

  end

end