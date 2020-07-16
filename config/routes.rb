Rails.application.routes.draw do
  resources :reviews
  resources :users
  resources :lists
  resources :movies
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
