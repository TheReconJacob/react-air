Rails.application.routes.draw do
  root "sessions#index"
  post "/login", to: "sessions#create"
  get "/logout", to: "session#destroy"

  resources :users do
    resources :links
  end
end
