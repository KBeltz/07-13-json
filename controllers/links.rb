# ---------------------------------------------------------------------
# links - menu
# ---------------------------------------------------------------------

get "/main_links" do
  erb :"/links/main_links"
end

# ---------------------------------------------------------------------
# create
# ---------------------------------------------------------------------

# form for user to enter information to add link
get "/create_link_form" do
  erb :"/links/create_link_form"
end

# get "/create_link_error" do
#   erb :"/links/create_link_error"
# end

# Gets parameters from add_link_form.
#
# Adds link to table
get "/create_link" do
  # if link.valid?(params["name"], params["description"])
  #   erb :"/links/add_link_error"
  # else
    Link.add_to_database("url" => params["url"])
    erb :"/links/success"
  # end
end

# ---------------------------------------------------------------------
# read
# ---------------------------------------------------------------------

# Returns read assigments menu
get "/read_links_menu" do
  erb :"/links/read_links_menu"
end

# Returns a list of all rows in the links table.
# get "/view_links" do
#   erb :"/links/view_links"
# end

# form to enter link id
get "/search_by_id_form" do
  erb :"/links/search_by_id_form"
end

# Returns user profile
get "/search_by_id/" do
  @new_link = Link.find(params["id"])
  erb :"/links/search_by_id"
end

# ---------------------------------------------------------------------
# update
# ---------------------------------------------------------------------

# table of link profiles
get "/update_links_form" do
  erb :"/links/edit_link_list"
end

# edit links form
get "/edit_link_form/:x" do
  @new_link = Link.find(params["x"])
  erb :"/links/edit_link_form"
end

# Gets parameters from edit_link_form
#
# Updates the item in the appropriate table of the database
get "/edit_link/" do
  @new_link = Link.find(params["x"])
  @new_link.name = params["name"]
  @new_link.description = params["description"]
  @new_link.save

  erb :"/links/success"
end

# ---------------------------------------------------------------------
# delete
# ---------------------------------------------------------------------

get "/delete_links_form" do
  erb :"/links/delete_link"
end

get "/delete_link/:x" do
  @specific_link = Link.find(params["x"])
  @specific_link.delete_row

  erb :"/links/success"
end
