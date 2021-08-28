Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users', to: 'pages#users', as: :users
  post 'friendships/:id', to: "friendships#create", as: :create_friendship
  resources 'friendships', only: %i( index destroy )
end
