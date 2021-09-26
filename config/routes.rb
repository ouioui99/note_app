Rails.application.routes.draw do
  root "notes#index"
  resources :contents, :notes

  get 'contents/:id/new', to: 'contents#new'
  post 'contents/:id/new', to: 'contents#new'

  get 'note/new', to: 'notes#new'
  post 'note/new',to: 'notes#create'
  get 'show/:id', to:'notes#show'
  
end
