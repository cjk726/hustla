Rails.application.routes.draw do
  # Routes for the Pool_table resource:
  # CREATE
  get "/pool_tables/new", :controller => "pool_tables", :action => "new"
  post "/create_pool_table", :controller => "pool_tables", :action => "create"

  # READ
  get "/pool_tables", :controller => "pool_tables", :action => "index"
  get "/pool_tables/:id", :controller => "pool_tables", :action => "show"

  # UPDATE
  get "/pool_tables/:id/edit", :controller => "pool_tables", :action => "edit"
  post "/update_pool_table/:id", :controller => "pool_tables", :action => "update"

  # DELETE
  get "/delete_pool_table/:id", :controller => "pool_tables", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
