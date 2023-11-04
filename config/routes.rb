Rails.application.routes.draw do
  root "welcome#index"
  resources :users, only: %i[index show]
  resources :plants, only: %i[index]
end
