Rails.application.routes.draw do
  resources :categories
 root to: "home#index"
resources :ideas
resources :categories
get "/home", to: "home#index"
 
end
