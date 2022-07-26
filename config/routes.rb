Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'

  get     'login',   to: 'sessions#new'
  post    'login',   to: 'sessions#create'
  delete  'logout',  to: 'sessions#destroy'
  root "lists#new"
  resources :lists, only: [:create, :show]

end
