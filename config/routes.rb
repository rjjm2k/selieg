Uniphobia::Application.routes.draw do

  get "comments/create"

  get "comments/destroy"

  resources :posts do
    resources :comments
  end

resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :sessions,          only: [:new, :create, :destroy]
  resources :microposts,        only: [:create, :destroy]
  resources :relationships,      only: [:create, :destroy]

  match '/signup',              to: 'users#new'
  match '/signup_vorlesung',    to: 'users#new_vorlesung' 
  match '/signup_semester',     to: 'users#new_semester' 
  match '/signup_uni',          to: 'users#new_uni' 
  match '/signin',              to: 'sessions#new'
  match '/signinerror',         to: 'sessions#newerror'
  match '/signout',             to: 'sessions#destroy', via: :delete

  root to: 'static_pages#home'

  match '/mitmachen',   to: 'static_pages#mitmachen'
  match '/help',        to: 'static_pages#help'
  match '/about',       to: 'static_pages#about'
  match '/contact',     to: 'static_pages#contact'
  match '/codebase',    to: 'static_pages#codebase'
  match '/datenschutz', to: 'static_pages#datenschutz'
  match '/cookies',     to: 'static_pages#cookies'
  match '/impressum',   to: 'static_pages#impressum'
  match '/uni',         to: 'users#uni'


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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
