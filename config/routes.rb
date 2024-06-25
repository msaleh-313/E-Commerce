Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
    root "products#index"
  #  get '/products/new', to: 'products#new', as: 'new_product'
  #  post '/products', to: 'products#create', as: 'create_product'

  #  get 'products/:id', to: 'products#show', as: 'product'
  resources :products

  resources :categories # Adjust with other necessary routes



  end
