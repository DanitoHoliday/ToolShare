Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'tools/index'
  get 'tools/show'
  get 'tools/new'
  get 'tools/create'
  get 'tools/edit'
  get 'tools/update'
  get 'tools/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
