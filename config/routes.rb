Rails.application.routes.draw do
  resources :notes
  resources :projects
  devise_for :users
  get 'page/home'
  get 'page/about'
  get 'page/notes'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'page#home'
end
