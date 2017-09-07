Rails.application.routes.draw do

  root to: 'toppages#index'
  resources :users
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # newアクションの場合にだけurlがsignupになる
  get 'signup', to: 'login_users#new'
  resources :login_users, only: [:index, :show, :new, :create]
end
