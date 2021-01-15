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
      collection do
        get :offer_request
      end
      member do
        get :offer_confirm
      end
  end

  resources :liked, only: [:destroy, :index]

  resources :chatrooms, only: [:index, :show, :new] do
    resources :messages, only: :create
  end
end
