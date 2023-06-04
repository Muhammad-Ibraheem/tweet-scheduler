Rails.application.routes.draw do
  get "about", to: "about#index"
  root 'main#index'

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "password", to: "passwords#edit"
  patch "password", to: "passwords#update"

  get "password/reset", to: "reset_password#new"
  post "password/reset", to: "reset_password#create"
  get "password/reset/edit", to: "reset_password#edit"
  patch "password/reset/edit", to: "reset_password#update"

end
