Rails.application.routes.draw do
  root "sessions#top"
  get  "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  post "/top_loggedln", to: "top_loggedln#create"
  get  "/top_loggedln", to: "top_loggedln#new"
  get  "/edit", to: "top_loggedln#edit"
  patch "/edit", to: "top_loggedln#update"
end
