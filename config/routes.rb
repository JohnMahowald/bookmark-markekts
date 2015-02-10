Rails.application.routes.draw do
  root to: "users#new"

  resources :users, except: :index
  resources :bookmark_files, only: [:create, :update, :destroy]
end
