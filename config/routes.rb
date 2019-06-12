Rails.application.routes.draw do
    
  resources :comments, only: %i[create destroy]

    root  'posts#index'

    resources :posts
end