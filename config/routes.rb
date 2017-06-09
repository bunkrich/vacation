Rails.application.routes.draw do
  root: "index"
    get '/users/:id', to: 'users#show'
    # get 'trips/:id/users/:id', to: 'users#profile'

    resources :trips, except: [:index] do
      resources :items, except: [:index]
      resources :days, only: [:show]
      resources :user, only: [:show]  
    end
end
