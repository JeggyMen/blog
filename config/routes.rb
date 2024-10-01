Rails.application.routes.draw do
  # Menus resource
  resources :menus

  # Articles and comments nested routes
  resources :articles do
    resources :comments, only: [:index, :new, :create, :show]
  end

  # Root path: directs to articles index page
  root "articles#index"

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check
end
