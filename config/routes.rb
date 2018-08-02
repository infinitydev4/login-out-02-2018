Rails.application.routes.draw do
  root to: 'static_pages#home'
  get     '/answer', to: 'static_pages#answer', as: "answer"
  get '/communauté', to: 'static_pages#list_users', as: "list_user"
  get    '/signup',  to: 'users#new', as: "signup"
  get    '/login',   to: 'sessions#new', as: "login"
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
