Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/" => "top#index", as: :top

  get "courses" => "courses#index", as: :courses

  get "games/:game_id" => "games#index", as: :games
  post "games/submit" => "games#submit", as: :game_submit

  get "result" => "result#index", as: :result

end
