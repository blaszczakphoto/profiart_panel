Rails.application.routes.draw do
	resources :portfolio

	namespace :admin do
		resources :portfolios
		resources :technologies

		root to: "portfolios#index"
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
