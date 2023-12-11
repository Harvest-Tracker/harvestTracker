Rails.application.routes.draw do
  root "welcome#index"
  resources :users, only: %i[index show]
  resources :plants, only: %i[index]

  patch "/hardiness_zone", to: "plants#update", as: "hardiness_zone"
end
