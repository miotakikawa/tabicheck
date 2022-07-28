Rails.application.routes.draw do
  resources :memories, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  root 'homes#top'

  get 'users/new'
  post 'users/create'

  get     'login',   to: 'sessions#new'
  post    'login',   to: 'sessions#create'
  delete  'logout',  to: 'sessions#destroy'

  resources :lists, only: [:new, :create, :show, :index]

end
