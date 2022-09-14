Rails.application.routes.draw do
  
  root "articles#index"

  # get 'login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # get '/logout', to: 'sessions#destroy'

  # get '/logout' , to: "sessions#destroy"


  # get '/list', to: "users#index"
  # get '/register', to: "users#new"
  # get '/register' , to: "users#create"
  # get '/delete' , to: "users#destroy"



  resources :users
  resources :sessions

  resources :articles do
    resources :comments
  end
  end

