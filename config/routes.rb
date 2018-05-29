Rails.application.routes.draw do
  resources :requests
  get 'welcome/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  root 'inicio#index'
end
