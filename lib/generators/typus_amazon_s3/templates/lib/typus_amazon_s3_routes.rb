class << ActionController::Routing::Routes;self;end.class_eval do
  define_method :clear!, lambda {}
end

ActionController::Routing::Routes.draw do |map|

  map.namespace :admin do |admin|
    admin.resources :amazon_s3, :member => { :remove_all_files => :any, 
                                             :grant => :any, 
                                             :grant_to_file => :any, 
                                             :delete_file => :any, 
                                             :edit_file => :any, 
                                             :share_file => :any }
  end

end