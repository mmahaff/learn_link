Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root "home#index"

  resources :users, only: [:index, :show, :edit, :update]

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
    end
  end

  resources :messages, only: [:new, :create]

  resources :microposts, only: [:create, :destroy]

  resources :libraries

end
