Rails.application.routes.draw do
  root to:'contents#new'
  get '/index', to: 'contents#index'
  
  resources :contents
end
