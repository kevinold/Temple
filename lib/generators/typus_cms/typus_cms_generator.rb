class TypusCmsGenerator < Rails::Generator::Base

  def manifest

    record do |m|

      # Verify existance of some folders otherwise, create them.
      [ 'app/controllers/admin', 
        'app/models', 
        'app/views/admin/pages', 
        'app/views/pages', 
        'config/typus' ].each do |folder|
        FileUtils.mkdir_p(folder) unless File.exists?(folder)
      end

      # Controllers, helpers, views, initializers and more.
      [ 'app/controllers/pages_controller.rb', 
        'app/controllers/stylesheets_controller.rb', 
        'app/helpers/content_block_helper.rb', 
        'app/models/content_block.rb', 
        'app/models/flat_page.rb', 
        'app/models/page.rb', 
        'app/models/stylesheet.rb', 
        'app/views/pages/index.html.erb', 
        'app/views/pages/show.html.erb', 
        'config/initializers/typus_cms.rb', 
        'config/typus/cms.yml', 
        'config/typus/cms_roles.yml', 
        'doc/README_CMS', 
        'lib/typus_cms_routes.rb' ].each { |f| m.file f, f }

      # Migration files.
      m.migration_template 'db/create_typus_cms', 
                           'db/migrate', { :migration_file_name => 'create_typus_cms' }

    end

  end

end
