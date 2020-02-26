Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: 'pages#home'
  get 'components',         to: 'pages#components',    as: :components
  resources :search, only: [:index]
  resources :tools do
    resources :reservations, only: [:create, :new]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
