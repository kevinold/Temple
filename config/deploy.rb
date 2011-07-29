require "bundler/capistrano"
#set :sudo_prompt, "eYWCFgt1"
#set :bundle_cmd, "sudo bundle"
default_run_options[:pty] = true

#$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
#require "rvm/capistrano"                  # Load RVM's capistrano plugin.
#set :rvm_bin_path, '/home/www/.rvm/bin'
#set :rvm_ruby_string, 'ruby-1.9.2-p180@templetoday.com'        # Or whatever env you want it to run in.

set :application, "templetoday"
 
# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git
#set :repository, "git@temple.kevinold.com:#{application}_rails.git"
set :repository, "git@github.com:kevinold/Temple.git"
set :branch, "feature/rails3_upgrade"
#set :deploy_via, :remote_cache
 
set :user, 'www'
set :use_sudo, false
set :ssh_options, { :forward_agent => true }
 
# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/home/#{user}/sites/#{application}.com"
 
role :app, "96.126.123.82"
role :web, "96.126.123.82"
role :db,  "96.126.123.82", :primary => true

task :prime_cache, :roles => :app do
    run <<-CMD
        wget --spider http://www.templetoday.com;
    CMD
end

after "deploy", "deploy:cleanup" #, :prime_cache

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end

end
