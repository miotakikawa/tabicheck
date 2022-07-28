Rails.application.routes.draw do
  resources :memories, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  get 'users/new'
  post 'users/create'

  get     'login',   to: 'sessions#new'
  post    'login',   to: 'sessions#create'
  delete  'logout',  to: 'sessions#destroy'
  root "lists#new"
  resources :lists, only: [:create, :show, :index]

end
