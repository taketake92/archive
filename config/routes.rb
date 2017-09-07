Rails.application.routes.draw do

  get 'toppages/index'

  # get 'login_users/index'

  # get 'login_users/show'

  # get 'login_users/new'

  # get 'login_users/create'

  # get 'loginusers/index'

  # get 'loginusers/show'

  # get 'loginusers/new'

  # get 'loginusers/create'

  root to: 'toppages#index'
  resources :users

  # newアクションの場合にだけurlがsignupになる
  get 'signup', to: 'login_users#new'
  resources :login_users, only: [:index, :show, :new, :create]
end
