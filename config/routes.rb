Rails.application.routes.draw do

  get 'loginusers/index'

  get 'loginusers/show'

  get 'loginusers/new'

  get 'loginusers/create'

  root to: 'users#index'
  resources :users

  # newアクションの場合にだけurlがsignupになる
  get 'signup', to: 'loginusers#new'
  resources :loginusers, only: [:index, :show, :new, :create]
end
