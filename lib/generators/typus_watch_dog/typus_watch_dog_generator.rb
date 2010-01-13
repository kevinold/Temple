class TypusWatchDogGenerator < Rails::Generator::Base

  def manifest

    record do |m|

      # Verify existance of some folders otherwise, create them.
      [ 'app/controllers/admin', 
        'app/views/admin/watch_dog', 
        'config/typus' ].each do |folder|
        FileUtils.mkdir_p(folder) unless File.exists?(folder)
      end

      # Controllers, helpers, views, initializers and more.
      [ 'app/controllers/admin/watch_dog_controller.rb', 
        'app/views/admin/watch_dog/index.html.erb', 
        'config/typus/watch_dog_roles.yml' ].each { |f| m.file f, f }

    end

  end

end