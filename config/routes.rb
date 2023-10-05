Rails.application.routes.draw do
  
  devise_for :users

  resources :users
  resources :reservations
  resources :rooms do
    collection do
      get "top"
    end
  end

  root to: "rooms#top"

  get "signup", to: "signup#new"
  post "signup", to: "signup#create"

  get "search" => "searches#search"

end
