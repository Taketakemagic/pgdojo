Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/" => "top#index", as: :top


  get "courses" => "courses#index", as: :courses


end
