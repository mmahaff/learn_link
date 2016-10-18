Rails.application.routes.draw do

  resources :users, only: [:index]

  devise_for :users, controllers: { registrations: 'users/registrations' }

end
