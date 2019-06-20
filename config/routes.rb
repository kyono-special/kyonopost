Rails.application.routes.draw do
    
  root 'static_pages#home'

  resources :comments, only: %i[create destroy]

    # root  'posts#index'

    resources :posts
end