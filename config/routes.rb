Rails.application.routes.draw do
  resources :conductores
  root to: 'home#index'
end
