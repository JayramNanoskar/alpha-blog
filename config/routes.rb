Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#home'
  # get 'welcome/home', to: 'welcome#home' 
  get 'about', to: 'welcome#about'

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  # post 'users', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
