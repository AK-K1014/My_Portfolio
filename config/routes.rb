Rails.application.routes.draw do
  root "sessions#top"
  get  "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
  post "/profile_edit", to: "profile_edit#create"
  patch "/profile_edit", to: "profile_edit#update"
  get  "/top_loggedln", to: "top_loggedln#new", as: :top_loggedln
  get  "/profile_edit", to: "profile_edit#edit"
end
