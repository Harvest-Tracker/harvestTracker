Rails.application.routes.draw do
  root "welcome#index"
  # devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  devise_for :users
  resources :users, only: %i[index show]
  resources :plants, only: %i[index]

  patch "/hardiness_zone", to: "plants#update", as: "hardiness_zone"
end
