Rails.application.routes.draw do
  root 'contents#new'
  resources :contents, :notes

  get 'new/note', to: 'notes#new'
  post 'new/note',to: 'notes#create'
  get 'note/index', to:'notes#index'
  
end
