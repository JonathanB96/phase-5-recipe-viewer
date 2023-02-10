Rails.application.routes.draw do
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  resources :recipes 
  post '/signup', to: 'users#create' 
  get '/me', to: 'users#show'
  get '/users', to: 'users#index'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/favorites', to: 'favorites#create'
  get '/users/:id/favorites', to: 'favorites#index'
  delete '/favorites/:id', to: 'favorites#destroy'
  get 'pages/download', to: 'pages#download'
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
