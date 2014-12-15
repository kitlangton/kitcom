Rails.application.routes.draw do
  root 'visitors#index'

  resources :illustrations
  resources :posts
end
