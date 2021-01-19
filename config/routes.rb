Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'books#index'
  resources :books, only: [:index, :create, :show, :edit, :destroy]
  resources :users, only: [:show, :new, :create, :index]
end
