Rails.application.routes.draw do

  resources :users
  resources :attractions

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/users/new' => 'users#new'
  delete '/logout' => 'sessions#destroy'
  post '/take_ride' => 'users#ride'

  root 'static#home'


end