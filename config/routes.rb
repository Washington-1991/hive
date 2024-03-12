Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :aptitudes, only: [:new, :create]

  get "/dashboard", to: "pages#dashboard"
  get "/profile", to: "pages#profile"
  get "/aptitudes", to: "aptitudes#new"
  get 'aboutus', to: 'pages#aboutus'
  get '/progress', to: 'pages#progress'
  get '/advice', to: 'pages#advice'
  get '/message', to: 'pages#message'

  resources :programs do
    resources :workouts, only: [:new, :create]
  end

  resources :user_weights, only: [:create]

  resources :messages, only: [:new, :create, :index]

  # resources :profile

  # Defines the root path route ("/")
  # root "posts#index"
end
