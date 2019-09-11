Rails.application.routes.draw do
  resources :carros
  resources :clientes
  root to: 'home#index'
end
