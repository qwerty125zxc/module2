Rails.application.routes.draw do
  devise_for :users
  resources :usparams
  resources :products

  root 'products#index'
end
