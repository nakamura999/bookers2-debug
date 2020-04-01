Rails.application.routes.draw do

  root to: 'home#top'
  get 'home/top'
  get 'home/about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only: [:show, :index, :edit, :create, :update, :destroy]

end
