Rails.application.routes.draw do
  root "notes#index"
  resources :contents, :notes
  resource :users

  get 'contents/:id/new', to: 'contents#new'
  post 'contents/:id/new', to: 'contents#new'
  delete 'contents/:id', to:'contents#destroy'

  get 'note/new', to: 'notes#new'
  post 'note/new',to: 'notes#create'
  get 'show/:id', to:'notes#show'


  get 'logon', to: 'users#new'
  post 'logon', to: 'users#create'



  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to:'sessions#destroy'
  
end
