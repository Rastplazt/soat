Rails.application.routes.draw do
  root     "home#index"
  resources :purchases
  resources :vehicles
  resources :vehicle_types
  resources :payments
  resources :people
  devise_for :users, controllers: {sessions: "users/sessions", passwords: 'users/passwords',  registrations: 'users/registrations', :confirmations => "users/confirmations" , :unlocks => 'users/unlocks'}
  get 'register', to: 'home#register'
  get 'cover', to: 'home#cover'
end
