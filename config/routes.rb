Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root 'welcome#index'
  resources :likes, only: [:create, :destroy, :index]
end
