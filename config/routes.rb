Rails.application.routes.draw do
  resources :illustrations

  resources :posts

  root to: 'posts#index'
end
