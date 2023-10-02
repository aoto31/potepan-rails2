Rails.application.routes.draw do
  
  devise_for :users
  root to: "home#index"

  get "signup", to: "signup#new"
  post "signup", to: "signup#create"

end
