Rails.application.routes.draw do
  root "sessions#new"
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resource :dashboard, only: [:show]
  resources :groups, only: [:new, :create, :show] do
    resources :locations, only: [:new, :create, :show, :update]
  end
end
