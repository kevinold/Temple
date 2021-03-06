TempleRails::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  
  devise_scope :admin_user do
    get '/admin/logout', :to => 'active_admin/devise/sessions#destroy'
  end

  match '/contact/new' => 'contact#new', :as => :new_contact, :via => :get
  match '/contact' => 'contact#new', :as => :contact, :via => :get
  match '/contact' => 'contact#create', :as => :contact, :via => :post
  match '/prayer/new' => 'prayer#new', :as => :new_prayer, :via => :get
  match '/prayer' => 'prayer#new', :as => :prayer, :via => :get
  match '/prayer' => 'prayer#create', :as => :prayer, :via => :post
  match '/about' => 'about#index', :as => :about
  match '/calendar' => 'calendar#index', :as => :calendar
  match '/' => 'home#index', :as => :home

  resources :sermons
  resources :pages
  resources :announcements

  match 'children/:id' => 'pages#show', :as => :page
  match 'events/:id' => 'pages#show', :as => :events
  match '/' => 'home#index'
  match '/:id' => 'pages#show', :as => :page
  match '/:controller(/:action(/:id))'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'

end
