Rails.application.routes.draw do
  devise_for :users
  resources :bugs
  resources :projects
  get '/projects/assign', to: 'projects#assign'
  root to: "projects#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
