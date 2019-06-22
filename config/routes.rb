Rails.application.routes.draw do
    
  root 'static_pages#home'
  get  'static_pages/home'
  get  '/signup',   to: 'users#new'
  post '/signup',   to: 'users#create'
  resources :comments, only: %i[create destroy]
  # root  'posts#index'
  resources :users
  resources :posts
end