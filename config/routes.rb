Rails.application.routes.draw do
  resources :posts
  resources :jobs
  resources :companies
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	pages :home,:aboutus,:contactus,:sectors

	root "pages#home"
end
