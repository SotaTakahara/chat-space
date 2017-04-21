Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  root 'groups#index'
  resources :groups
  # get groups/new: "groups#new"
  # post groups: "groups#create"
end
