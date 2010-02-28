ActionController::Routing::Routes.draw do |map|

  # Contact form routes
  map.new_contact '/contact/new', :controller => 'contact', :action => 'new', :conditions => { :method => :get }
  map.contact '/contact', :controller => 'contact', :action => 'new', :conditions => { :method => :get }
  map.contact '/contact', :controller => 'contact', :action => 'create', :conditions => { :method => :post }

  # Prayer form routes
  map.new_prayer '/prayer/new', :controller => 'prayer', :action => 'new', :conditions => { :method => :get }
  map.prayer '/prayer', :controller => 'prayer', :action => 'new', :conditions => { :method => :get }
  map.prayer '/prayer', :controller => 'prayer', :action => 'create', :conditions => { :method => :post }

  # Explicitly set routes (also needed for use with navigation_helper)
  # TODO: should change all to show actions
  map.about '/about', :controller => 'about', :action => 'index'
  map.calendar '/calendar', :controller => 'calendar', :action => 'index'
  map.home '/', :controller => 'home', :action => 'index'

  map.resources :sermons
  map.resources :pages
  map.page '/:id', :controller => 'pages', :action => 'show'

  # Allow pages urls to be accessed via events prefix
  # i.e. templetoday.com/events/beth-moore-simulcast
  map.events 'events/:id', :controller => 'pages', :action => 'show'

  map.namespace :admin do |admin|
    admin.resources :pages
    admin.resources :sermons
    admin.root :controller => "home"
  end

  map.signup '/signup', :controller => 'users', :action => 'create', :conditions => { :method => :post}
  map.signup '/signup', :controller => 'users', :action => 'new', :conditions => { :method => :get}
  map.resource :account, :controller => 'users'

  map.login '/login', :controller => 'user_sessions', :action => 'create', :conditions => { :method => :post}
  map.login '/login', :controller => 'user_sessions', :action => 'new', :conditions => { :method => :get}
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "home"
  #map.root :controller => "pages", :action => 'show', :id => 'home'

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
