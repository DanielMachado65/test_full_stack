
Rails.application.routes.draw do

  root 'pedidos#index', as: 'home'

  devise_for :compradors
  resources :pedidos
  resources :ingressos
  resources :compradors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
