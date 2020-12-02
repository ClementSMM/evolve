Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :programs, only: [:index, :show]
  resources :profiles do
    collection do
      get :profile
      get :dashboard
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
