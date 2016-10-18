Rails.application.routes.draw do
  root "home#index"

  resources :users, only: [:index]

  devise_for :users, controllers: { registrations: 'users/registrations' }

end
