Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }


  resources :login

  resources :bookings
  root 'home#index'
end
