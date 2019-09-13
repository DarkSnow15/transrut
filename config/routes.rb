Rails.application.routes.draw do
  devise_for :users
  resources :conductores
  root to: 'home#index'
end
