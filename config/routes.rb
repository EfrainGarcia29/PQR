Rails.application.routes.draw do
  resources :rols
  resources :adjuncts
  devise_for :users
  #, skip: [:sessions]
#	as :user do
#	  get 'signin', to: 'devise/sessions#new', as: :new_user_session
#	  post 'signin', to: 'welcome#index', as: :user_session
#	  delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
	#end
  resources :parameters
  resources :type_requests
  resources :usuarios
  resources :requests
  post 'requests/index'
  resources :inicio
  #get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
end
