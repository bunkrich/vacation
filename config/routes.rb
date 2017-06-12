Rails.application.routes.draw do
  root 'home#index'
  get '/about', to: 'home#about'

  get 'trips/:id/users/:id', to: 'users#profile'
  get '/users/:id', to: 'users#show'

  resources :trips, except: [:index] do
    resources :comments, except: [:index]
    resources :items, except: [:index] do
      resources :votes, except: [:index, :show]
    end
    resources :days, only: [:show]
    resources :user, only: [:show]
  end
end
