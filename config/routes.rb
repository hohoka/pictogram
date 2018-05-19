Rails.application.routes.draw do
  get 'pages/tama'
  get 'sessions/new'
  get 'users/new'
  get 'pages/index'
  get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#index'
get 'pages/help'
end

Rails.application.routes.draw do
  get 'pages/tama'
  get 'sessions/new'
    root 'pages#index'
    
    get 'pages/help'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'

    resources 'users'
end
