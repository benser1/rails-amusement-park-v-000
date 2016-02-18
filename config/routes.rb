Rails.application.routes.draw do

  resources :users
  resources :attractions
  resources :sessions

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/users/new' => 'users#new'
  delete '/logout' => 'sessions#destroy'
  post '/take_ride' => 'users#ride'

  root 'static#home'


end