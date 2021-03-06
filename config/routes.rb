Rails.application.routes.draw do
  get "/movies/:id" => "movies#show"

  namespace :api do
    post "/users" => "users#create"

    get "/actors" => "actors#index"
    post "/actors" => "actors#create"
    get "/actors/:id" => "actors#show"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"

    get "/movies" => "movies#index"
    post "/movies" => "movies#create"
    get "/movies/:id" => "movies#show"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    post "movie_genres" => "movie_genres#create"
  end
end
