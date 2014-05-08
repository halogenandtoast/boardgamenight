Rails.application.routes.draw do
  root "sessions#new"
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resource :dashboard, only: [:show]
end
