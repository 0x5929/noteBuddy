Rails.application.routes.draw do
  resources :notes
  resources :projects
  devise_for :users

  # Defines the root path route ("/")
  root 'page#home'

  get 'about', to: 'page#about'
  get 'dashboard', to: 'page#dashboard'
  get 'todo', to: 'page#todo'
  get 'whiteboard', to: 'page#whiteboard'

end
