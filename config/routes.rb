Rails.application.routes.draw do
  root 'users#login'
  get 'articles', to: 'articles#index'
  resources :articles
  resources :sessions
  get 'login', to: 'users#login'
end
