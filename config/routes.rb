Rails.application.routes.draw do
  get 'squares/list'

  get 'users/new'

  root :to => "sessions#new"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/square', to: 'squares#list'
  # post 'square/updates'

  resources :users
  resources :squares
end
