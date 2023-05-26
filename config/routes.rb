Rails.application.routes.draw do
  root "sessions#top"
  get "/login", to: "sessions#login"
  get "/top",   to: "sessions#top"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
