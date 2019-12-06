Rails.application.routes.draw do
  root "properties#index"
  post "/login", to: "sessions#create"
  get "/logout", to: "session#destroy"

  resources :properties do
   resources :bookings do
     resources :reviews
   end
  end

  resources :users do
    resources :properties
  end
end
