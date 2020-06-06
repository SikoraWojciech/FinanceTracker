Rails.application.routes.draw do
  root "welcome#index"
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  get "stocks-tracking", to: "users#stocks_tracking"
  get "search-stock", to: "stocks#search"
  get "following", to: "users#following"
  get "search-friend", to: "users#search"
  resources :friendships, only: [:create, :destroy]
  resources :users, onlu: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
