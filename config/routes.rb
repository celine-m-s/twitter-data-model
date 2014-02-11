Twitter::Application.routes.draw do

  resources :users do
    resources :tweets
  end

  root 'tweets#index'

=begin
# LOGGING IN
GET '/' 
POST '/' to: "signin#logged_in" 

# ONCE LOGGED IN
GET '/' to: "tweets#list"

#USER - Create
GET '/new' to: "user#new"
POST '/new' to: "user#create"
#USER - Read
GET '/:user_id'
#USER - Update
GET '/:user_id/edit'
PATCH '/:user_id/edit'
#USER - Delete
DELETE '/:user_id/delete'


#TWEET - Create
GET '/:user_id/new' to: "tweets#new"
POST '/:user_id/new' to: "tweets#create"
#TWEET - Read
GET '/:user_id/:tweet_id' to: "tweets#show"
#TWEET - Update
GET '/:user_id/:tweet_id/edit'
PATCH '/:user_id/:tweet_id/edit'
#TWEET - Delete
DELETE '/:user_id/:tweet_id/delete'

#FOLLOWSHIP - Read
GET '/all'
GET '/followee'
GET '/followers'
#FOLLOWSHIP - Create
POST '/:user_id/follow'
#FOLLOWSHIP - Delete
DELETE '/:user_id/unfollow'
=end



















  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
