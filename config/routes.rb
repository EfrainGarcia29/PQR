Rails.application.routes.draw do
  resources :areas
  resources :tipo_notificacions
  resources :estados
  resources :tipos_seguimientos
  resources :permisos
  resources :seguimientos
  resources :notificacions
  resources :admin
  post 'admin/index'
  resources :rols
  post 'rols/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :adjuncts
  post 'adjuncts/index'
  devise_for :users
  #, skip: [:sessions]
#	as :user do
#	  get 'signin', to: 'devise/sessions#new', as: :new_user_session
#	  post 'signin', to: 'welcome#index', as: :user_session
#	  delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
	#end
  resources :parameters
  post 'parameters/index'
  resources :type_requests
  post 'type_requests/index'
  resources :usuarios
  post 'usuarios/index'
  resources :requests
  post 'requests/index'
  resources :inicio
  post 'inicio/index'
  #get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
end
