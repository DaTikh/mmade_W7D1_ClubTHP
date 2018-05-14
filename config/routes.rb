Rails.application.routes.draw do
  root 'sessions#new'
  resources :users
  get "/signup", to: "users#new", as: "sign_up"
  get "/login", to: "sessions#new", as: "log_in"
  post "/login", to: "session#create"
  delete "/logout", to: "sessions#destroy", as: "log_out"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
