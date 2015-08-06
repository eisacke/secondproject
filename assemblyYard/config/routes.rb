Rails.application.routes.draw do
	root 'welcome#index'
	resources :users
	resources :snippets
	resources :categories
	resources :sessions, only: [:new, :create, :destroy]
	resources :snippets do
		member do
			put "like", to: "snippets#upvote"
		end
	end
	
	get "/login", to: "sessions#new"
	delete "/logout", to: "sessions#destroy"
end
