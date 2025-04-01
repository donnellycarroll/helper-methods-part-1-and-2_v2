Rails.application.routes.draw do
  get "/" => "movies#index" 

  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create"
  get "/movies/new" => "movies#new" 

  # READ
  get "/movies" => "movies#index" 
  get("/movies/:id",  controller: "movies", action: "show" )

  # UPDATE
  patch("/movies/:id",  controller: "movies", action: "update" )
  get("/movies/:id/edit",  controller: "movies", action: "edit" )

  # DELETE
  delete("/movies/:id",  controller: "movies", action: "destroy" )

  #------------------------------
end
