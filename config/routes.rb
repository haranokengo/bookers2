Rails.application.routes.draw do
  devise_for :users
  root to: 'books#top'
  resources :books, only: [:index, :create, :show, :edit, :destroy, :update, :destroy]
  resources :users, only: [:show, :new, :create, :index, :edit, :update]
end
