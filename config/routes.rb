Rails.application.routes.draw do
    
  root 'static_pages#home'
  get  'static_pages/home'
  get  '/signup',   to: 'users#new'
  resources :comments, only: %i[create destroy]

    # root  'posts#index'

    resources :posts
end