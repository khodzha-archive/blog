Blog::Application.routes.draw do

	get "log_out" => "sessions#destroy", :as => "log_out"
	get "log_in" => "sessions#new", :as => "log_in"
	get "sign_up" => "users#new", :as => "sign_up"
	get "posts_index" => "posts#index", :as => "posts"
	get "post_new" => "posts#new", :as => "new_post"
	root :to => "users#new"

	resources :users
	resources :sessions
	resources :posts

end
