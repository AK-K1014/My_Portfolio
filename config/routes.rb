Rails.application.routes.draw do
  resources :users
  root "sessions#top"
  get  "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  get  "/top_loggedln", to: "top_loggedln#new", as: :top_loggedln
end
