# ---------------------------------------------------------------------
# assignments - menu
# ---------------------------------------------------------------------

get "/main_assignments" do
  erb :"/assignments/main_assignments"
end

# ---------------------------------------------------------------------
# create
# ---------------------------------------------------------------------

# form for user to enter information to add assignment
get "/create_assignment_form" do
  erb :"/assignments/create_assignment_form"
end

get "/create_assignment_error" do
  erb :"/assignments/add_assignment_error"
end

# Gets parameters from add_assignment_form.
#
# Adds assignment to table
get "/create_assignment" do
  if Assignment.valid?(params["name"], params["description"])
    erb :"/assignments/add_assignment_error"
  else
    Assignment.add_to_database("name" => params["name"], "description" => params["description"])
    erb :"/assignments/success"
  end
end

# ---------------------------------------------------------------------
# read
# ---------------------------------------------------------------------

# Returns read assigments menu
get "/read_assignments_menu" do
  erb :"/assignments/read_assignments_menu"
end

# form to enter assignment id
get "/search_by_id_form" do
  erb :"/assignments/search_by_id_form"
end

# Returns user profile
get "/search_by_id/" do
  @new_assignment = Assignment.find(params["id"])
  erb :"/assignments/search_by_id"
end

# ---------------------------------------------------------------------
# update
# ---------------------------------------------------------------------

# table of assignment profiles
get "/update_assignments_form" do
  erb :"/assignments/edit_assignment_list"
end

# edit assignments form
get "/edit_assignment_form/:x" do
  @new_assignment = Assignment.find(params["x"])
  erb :"/assignments/edit_assignment_form"
end

# Gets parameters from edit_assignment_form
#
# Updates the item in the appropriate table of the database
get "/edit_assignment/" do
  @new_assignment = Assignment.find(params["x"])
  @new_assignment.name = params["name"]
  @new_assignment.description = params["description"]
  @new_assignment.save

  erb :"/assignments/success"
end

# ---------------------------------------------------------------------
# delete
# ---------------------------------------------------------------------

get "/delete_assignments_form" do
  erb :"/assignments/delete_assignment"
end

get "/delete_assignment/:x" do
  @specific_assignment = Assignment.find(params["x"])
  @specific_assignment.delete_row

  erb :"/assignments/success"
end
