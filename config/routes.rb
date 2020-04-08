Rails.application.routes.draw do
  resources :users, only: [:create]
  get 'users', to: 'users#show'
  post 'login', to: 'authentication#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
