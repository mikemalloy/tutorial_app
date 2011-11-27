TutorialApp::Application.routes.draw do
  resources :ptest_results

  resources :ptests
  resources :ptests do
    member do
      put 'add_test_result'
    end
  end

  resources :browsers

  resources :connections

  resources :operating_systems

  resources :devices

  resources :metrics

  resources :performance_test_results

  resources :performance_tests
  resources :performance_tests do
    member do
      put 'add_test_result'
    end
    member do
      get 'show_levels'
    end
  end

  resources :test_suites

  resources :email_list_items

  resources :email_lists do
    member do
      put 'add_email'
    end
  end
  
  resources :test_results
  resources :test_results do
    member do
      put 'send_email'
    end
  end
  
  #resources :email_lists do
   # resources :email_list_items
  #end
  

  get "projects/new"

  get "projects/index"

  get "sessions/new"

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]
  resources :projects, :only => [:new, :create, :destroy, :index]
  #resources :test_results, :only => [:new, :create, :destroy, :index]
  resources :test_results 
  resources :test_results do
    member do
      put 'send_email'
    end
  end
  resources :users do
    resources :microposts
  end
  
  match '/signup', :to => 'users#new'

  match '/contact', :to => 'pages#contact'
  match '/about', :to => 'pages#about'
  match '/help', :to => 'pages#help'
  match '/', :to => 'test_results#index'
  
  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  
  
  root :to => 'test_results#index'
  
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
