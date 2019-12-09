Rails.application.routes.draw do
  root "properties#index"
  get "login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  resources :properties do
   resources :bookings do
     resources :reviews
   end
  end

  resources :users do
    resources :properties
  end
end
