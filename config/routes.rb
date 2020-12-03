Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :programs, only: [:index, :show]

  get "/profiles/dashboard", to:"profiles#dashboard"
  get "/profiles/profile", to:"profiles#profile"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
