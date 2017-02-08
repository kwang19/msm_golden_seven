Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get("/", { :controller => "movies", :action => "index" })

# Routes to READ movies

get("/movies",           { :controller => "movies", :action => "index" })
get("/movies/new",       { :controller => "movies", :action => "new_form" })
get("/movies/:id/edit",       { :controller => "movies", :action => "edit_form" })
get("/create_movie",       { :controller => "movies", :action => "create_row" })
get("/delete_movie/:id",       { :controller => "movies", :action => "delete_movie" })
get("/movies/:id",       { :controller => "movies", :action => "show" })
get("/update_movie/:id",       { :controller => "movies", :action => "update_row" })

get("/actors",           { :controller => "actors", :action => "index" })
get("/actors/new",       { :controller => "actors", :action => "new_form" })
get("/actors/:id/edit",       { :controller => "actors", :action => "edit_form" })
get("/create_actor",       { :controller => "actors", :action => "create_row" })
get("/delete_actor/:id",       { :controller => "actors", :action => "delete_actor" })
get("/actors/:id",       { :controller => "actors", :action => "show" })
get("/update_actor/:id",       { :controller => "actors", :action => "update_row" })

get("/directors",           { :controller => "directors", :action => "index" })
get("/directors/new",       { :controller => "directors", :action => "new_form" })
get("/directors/:id/edit",       { :controller => "directors", :action => "edit_form" })
get("/create_director",       { :controller => "directors", :action => "create_row" })
get("/delete_director/:id",       { :controller => "directors", :action => "delete_director" })
get("/directors/:id",       { :controller => "directors", :action => "show" })
get("/update_director/:id",       { :controller => "directors", :action => "update_row" })



end
