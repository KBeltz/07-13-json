# ---------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------
get "/" do
  @page_title = "Home"
  erb :"main/home"
end