Rails.application.routes.draw do
  root 'home#index'
  get '/about', to: 'home#about'

  get 'trips/:id/users/:id', to: 'users#profile'
  get '/users/:id', to: 'users#show'

  resources :trips, except: [:index] do
    resources :items, except: [:index]
    resources :days, only: [:show]
    resources :user, only: [:show]
  end
end
