Rails.application.routes.draw do
  root "dashboard#show"

  resources :clients

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
