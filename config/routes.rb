Rails.application.routes.draw do
  resources :messages
  # action cable server
  mount ActionCable.server => "/cable"
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
