Rails.application.routes.draw do
  
  devise_for :users
  root to: "homes#top"
  resources :users, only: [:show, :edit]
  resources :books, only: [:show, :edit, :new, :create, :index, :update, :destroy]
end
