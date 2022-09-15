Rails.application.routes.draw do
  
  root "articles#index"


  # get '/signup' => 'user#new'
  # post '/users' => 'user#create'
  
  # get '/' => 'user#index'

  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # get '/logout' => 'sessions#destroy'
  
  get '/logout' => 'sessions#destroy'

  resources :users
  resources :sessions

  resources :articles do
    resources :comments
  end
  end

