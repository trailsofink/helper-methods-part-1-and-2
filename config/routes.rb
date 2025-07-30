Rails.application.routes.draw do
  # get("/", controller: "movies", action: "index" )
  # get "/movies" => "movies#index"
  root "movies#index"

  # Routes for the Movie resource:

  # CREATE
  # post("/movies", controller: "movies", action: "create" )
  post "/movies" => "movies#create", as: :movies
  # get("/movies/new", controller: "movies", action: "new" )
  get "/movies/new" => "movies#new", as: :new_movie

  # READ
  # get("/movies", controller: "movies", action: "index" )
  get "/movies" => "movies#index"
  # get("/movies/:id", controller: "movies", action: "show" )
  get "/movies/:id" => "movies#show", as: :movie # use in template as movie_path() or movie_url()

  # UPDATE
  # patch("/movies/:id", controller: "movies", action: "update" )
  patch "/movies/:id" => "movies#update"
  # get("/movies/:id/edit", controller: "movies", action: "edit" )
  get "/movies/:id/edit" => "movies#edit", as: :edit_movie

  # DELETE
  # delete("/movies/:id", controller: "movies", action: "destroy" )
  delete "/movies/:id" => "movies#destroy"

  #------------------------------
end
