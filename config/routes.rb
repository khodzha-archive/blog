Blog::Application.routes.draw do

	resources :users
	resources :sessions
	resources :posts

	root :to => "users#new"

	match "/log_in" => "sessions#new"
	match "/log_out" => "sessions#destroy"
	match "/sign_up" => "users#new"
end
