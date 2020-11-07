Rails.application.routes.draw do
  get "session/current_user"
  get "/home", to: "application#home", as: "home"
  get "/login", to: "session#new", as: "login"
  post "/login", to: "session#create"
  get "secret", to: "secrets#index", as: "secret"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
