Rails.application.routes.draw do
  root 'home#index'
  get '/about', to: 'home#about'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup/trips/:id/new', to: 'users#new_traveler'
  post '/signup/trips/:id', to: 'users#create_traveler'
  get '/login/trips/:id/new', to: 'users#login_traveler'
  post '/login/trips/:id', to: 'users#logging_in_traveler'


  get 'trips/:id/users/:id', to: 'users#profile'
  get '/users/:id', to: 'users#show', :as => :user

  get 'trips/:id/invite/new' => 'users#invitation'
  post 'trips/:id/invite' => 'users#invited'

  resources :users, only: [:new, :create, :show]

  resources :trips, except: [:index] do
    resources :comments, except: [:index]
    resources :items, except: [:index] do
      resources :votes, except: [:index, :show]
    end
    resources :days, only: [:show]
    resources :user, only: [:show]
  end
end
