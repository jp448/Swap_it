Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "components", to: 'pages#components'
  get "swaped", to: 'pages#swaped'

  resources :items

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
