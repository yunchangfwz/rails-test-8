Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources  :posts
  resources  :comments, only: [:create]
  resources  :users do
    resources :profiles, only: [:index]
  end
end
