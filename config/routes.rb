Rails.application.routes.draw do
  # resources :recs
  # resources :ownerships
  # resources :songs
  # resources :users
get '/users', to: 'users#index'
post 'users', to: 'users#create'
get 'users/:id', to: 'users#show'
get 'users/:id/songs', to: 'users#songs'
delete 'users/:id', to: 'users#destroy'


get '/songs', to: 'songs#index'
post '/songs', to: 'songs#create'
get '/songs/:id', to: 'songs#show'
delete '/songs/:id', to: 'songs#destroy'
patch 'songs/:id', to: 'songs#update'

post '/ownerships', to: 'ownerships#create'

get '/recs', to: 'recs#index'
post '/recs', to: 'recs#create'
get 'recs/:id', to: 'recs#show'
delete 'recs/:id', to: 'recs#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
