Rails.application.routes.draw do
 root "welcome#index"
 resources :users, only: %i[index show]
end
