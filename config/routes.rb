Rails.application.routes.draw do
  get 'boards' => 'boards#index'
  get 'boards/new' => 'boards#new'
  post 'bords' => 'boards#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
