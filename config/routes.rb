Rails.application.routes.draw do
  get 'admin/index'

  get 'admin/update'

  get "admin" => "admin#index"
	put "admin/:id" => "admin#update"
	patch "admin/:id" => "admin#update"

  resources :grades
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root "grades#index"  
end
