Rails.application.routes.draw do
  devise_for :users
  resources :conductores
  resources :carros
  resources :clientes
  resources :conductorescarros
  root to: 'home#index'
end
