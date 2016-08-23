Rails.application.routes.draw do
  resources :photos
  resources :posts
  get   '/login'      => 'sessions#new'
  post  '/login'      => 'sessions#create'
  get   '/logout'     => 'sessions#destroy'
  get   '/signup'     => 'users#new'
  post  '/users'      => 'users#create'
  root to:               'home#new'
end
