Rails.application.routes.draw do
  root to: 'boards#index'
  resources :boards
  resources :comments, only:[:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end