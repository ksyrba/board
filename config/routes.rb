Rails.application.routes.draw do
  root to: 'home#index'
  resources :boards
  resources :comments, only:[:create, :destroy]
  resources :users, only:[:new, :create]
  get 'mypage' => 'users#me'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end