Rails.application.routes.draw do
  resources :castles
  resources :users, only: [:index, :create]

  resources :weapon

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
