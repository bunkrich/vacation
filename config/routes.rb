Rails.application.routes.draw do
  #
  # get 'users/show'
  #
  # get 'trips/show'
  #
  # get 'trips/new'
  #
  # get 'trips/create'
  #
  # get 'trips/update'
  #
  # get 'trips/edit'
  #
  # get 'trips/destroy'

  get 'trips/:id/users/:id', to: 'users#profile'
  get '/users/:id', to: 'users#show'

  resources :trips, except: [:index] do
    resources :items, except: [:index]
    resources :days, only: [:show]
    resources :user, only: [:show]
  end
end
