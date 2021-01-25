Rails.application.routes.draw do
  # resources :ownerships
  # resources :songs
  # resources :users
get '/users', to: 'users#index'
post 'users', to: 'users#create'
get 'users/:id', to: 'users#show'
delete 'users/:id', to: 'users#destroy'


get '/songs', to: 'songs#index'
post '/songs', to: 'songs#create'
get '/songs/:id', to: 'songs#show'
delete '/songs/:id', to: 'songs#destroy'
patch 'songs/:id', to: 'songs#update'

post '/ownerships', to: 'ownerships#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end