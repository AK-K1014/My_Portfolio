Rails.application.routes.draw do
  resources :users
  root "sessions#top"
  get "/login", to: "sessions#login"
  get "/top",   to: "sessions#top"
  get '/top_loggedln', to: "top_loggedln#new", as: :top_loggedln
end
