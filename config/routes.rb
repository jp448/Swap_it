Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "components", to: 'pages#components'
  get "swaped", to: 'pages#swaped'

  resources :items do
    resources :liked, only: [:create]
    collection do
      get :my_items
    end
    resources :offers, only: [:new] do
      collection do
        get :select_item
      end
    end
  end

  resources :offers, only: [:create, :index] do
      member do
        get :offer_confirm
        get :offer_decline
      end
      collection do
        get :my_swaps
      end
  end

  resources :liked, only: [:destroy, :index]

  resources :chatrooms, only: [:index, :show, :new] do
    resources :messages, only: :create
  end
end
