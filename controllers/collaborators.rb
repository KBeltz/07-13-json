# ---------------------------------------------------------------------
# collaborators - menu
# ---------------------------------------------------------------------

get "/main_collaborators" do
  erb :"/collaborators/main_collaborators"
end

# ---------------------------------------------------------------------
# create
# ---------------------------------------------------------------------

# form for user to enter information to add collaborator
get "/create_collaborator_form" do
  erb :"/collaborators/create_collaborator_form"
end

# Gets parameters from add_collaborator_form.
#
# Adds collaborator to table
get "/create_collaborator" do
  Collaborator.add_to_database("name" => params["name"])
  erb :"/collaborators/success"
end

# ---------------------------------------------------------------------
# read
# ---------------------------------------------------------------------

# Returns read assigments menu
get "/read_collaborators_menu" do
  erb :"/collaborators/read_collaborators_menu"
end

# Returns a list of all rows in the collaborators table.
get "/view_collaborators" do
  erb :"/collaborators/view_collaborators"
end

# form to enter collaborator id
get "/search_by_id_form" do
  erb :"/collaborators/search_by_id_form"
end

# Returns user profile
get "/search_by_id/" do
  @new_collaborator = Collaborator.find(params["id"])
  erb :"/collaborators/search_by_id"
end

# ---------------------------------------------------------------------
# update
# ---------------------------------------------------------------------

# table of collaborator profiles
get "/update_collaborators_form" do
  erb :"/collaborators/edit_collaborator_list"
end

# edit collaborators form
get "/edit_collaborator_form/:x" do
  @new_collaborator = Collaborator.find(params["x"])
  erb :"/collaborators/edit_collaborator_form"
end

# Gets parameters from edit_collaborator_form
#
# Updates the item in the appropriate table of the database
get "/edit_collaborator/" do
  @new_collaborator = Collaborator.find(params["x"])
  @new_collaborator.name = params["name"]
  @new_collaborator.description = params["description"]
  @new_collaborator.save

  erb :"/collaborators/success"
end

# ---------------------------------------------------------------------
# delete
# ---------------------------------------------------------------------

get "/delete_collaborators_form" do
  erb :"/collaborators/delete_collaborator"
end

get "/delete_collaborator/:x" do
  @specific_collaborator = Collaborator.find(params["x"])
  @specific_collaborator.delete_row

  erb :"/collaborators/success"
end
