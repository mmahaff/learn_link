Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root "home#index"

  resources :users, only: [:index, :show]

end
