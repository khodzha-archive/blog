Blog::Application.routes.draw do

	resources :users
	resources :sessions
	resources :posts do
    resources :comments
    collection do
      get :tag
    end
	end

	root :to => "posts#index"

	match "/log_in" => "sessions#new"
	match "/log_out" => "sessions#destroy"
	match "/sign_up" => "users#new"
end
