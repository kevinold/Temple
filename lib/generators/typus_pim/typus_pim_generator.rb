class TypusPimGenerator < Rails::Generator::Base

  def manifest

    record do |m|

      # Verify existance of some folders otherwise, create them.
      [ 'config/typus' ].each do |folder|
        FileUtils.mkdir_p(folder) unless File.exists?(folder)
      end

      # Controllers, helpers, views, initializers and more.
      [ 'app/models/contact.rb', 
        'app/models/note.rb', 
        'config/typus/pim.yml', 
        'config/typus/pim_roles.yml', 
        'doc/README_PIM' ].each { |f| m.file f, f }

      # Migration files.
      m.migration_template "db/create_typus_pim", 
                           'db/migrate', { :migration_file_name => 'create_typus_pim' }

    end

  end

end