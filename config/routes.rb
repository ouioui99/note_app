Rails.application.routes.draw do
  root 'contents#new'
  resources :contents
  
end
