Rails.application.routes.draw do
  root to: "clients#index"

  resource :session, only: %i[new create destroy]
  resources :clients
end
