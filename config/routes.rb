Rails.application.routes.draw do
  root 'home#index'
  get '/about', to: 'home#about'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'trips/:id/users/:id', to: 'users#profile'
  get '/users/:id', to: 'users#show'

  resources :users, only: [:new, :create, :show]

  resources :trips, except: [:index] do
    resources :comments, except: [:index]
    resources :items, except: [:index] do
      resources :comments, except: [:index]
      resources :votes, except: [:index, :show]
    end
    resources :days, only: [:show]
    resources :user, only: [:show]
  end
end
