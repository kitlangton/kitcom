Rails.application.routes.draw do
  root 'visitors#index'
  get '/about', to: 'visitors#about', as: 'about'
  resources :illustrations
  resources :posts
end
