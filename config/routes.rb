Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources :bugs
  resources :projects, only: [:new,  :create]
  get '/project_histories/assign', to: 'project_histories#assign'
  post '/project_histories/project_assgin', to: 'project_histories#project_assgin', :as => :project_assign_project_histories

  get '/bug_histories/assign', to: 'bug_histories#assign'
  post '/bug_histories/bug_assgin', to: 'bug_histories#bug_assgin', :as => :bug_assign_bug_histories

  get '/project_histories/assign_developer', to: 'project_histories#assign_developer'
  get '/bug_histories/assign_developer', to: 'bug_histories#assign_developer'

  root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
