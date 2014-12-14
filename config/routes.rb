Rails.application.routes.draw do
  resources :illustrations

  resources :posts

  root 'visitors#index'
end
