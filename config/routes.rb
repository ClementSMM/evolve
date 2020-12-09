Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :programs, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
    resources :users_programs, only:[:create, :update]
  end

  resources :steps, only: [:show]
  get "/profiles/dashboard", to:"profiles#dashboard"
  get "/profiles/profile", to:"profiles#profile"

  resources :final_tests, only: [:show] do
    resources :final_test_answers, only: [:create, :update]
  end

  resources :questions, only: [:show]
  get "/test", to:"pages#test"

  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: [:create]
  end

  namespace :account do
    resources :chatrooms, only: [:index]
  end

  resources :quizzes, only: [:show] do
    resources :quizz_scores, only: [:create]
  end
  resources :quizz_scores, only: [:show, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
