Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]
  resources :books, only: [:index, :create, :show, :edit, :destroy, :update, :destroy]
  resources :users, only: [:show, :new, :create, :index, :edit, :update]
end