Rails.application.routes.draw do
  devise_for :users
  resources :conductores
  resources :carros
  resources :clientes
  root to: 'home#index'
end
