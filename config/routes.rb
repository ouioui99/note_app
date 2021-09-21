Rails.application.routes.draw do
  root 'contents#new'
  resources :contents, :notes

  get 'note/new', to: 'notes#new'
  post 'note/new',to: 'notes#create'
  get 'note/index', to:'notes#index'
  get 'note/show/:id', to:'notes#show'
  
end
